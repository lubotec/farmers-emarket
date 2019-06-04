class PaymentsController < ApplicationController
    before_action :set_order

    def new
    end

    def create
        customer = Stripe::Customer.create(
          source: params[:stripeToken],
          email:  params[:stripeEmail]
        )
      
        charge = Stripe::Charge.create(
          customer:     customer.id,   # You should store this customer id and re-use it.
          amount:       @order.total_price_cents,
          description:  "Payment for order #{@order.id}",
          currency:     @order.total_price.currency
        )
      
        @order.update(payment: charge.to_json, status: 'paid')
        @order.order_products.each { |order_product| order_product.update(status: "paid") }
        current_user.restaurant.check_open_order
        redirect_to order_path(@order)
      
      rescue Stripe::CardError => e
        flash[:alert] = e.message
        redirect_to new_order_payment_path(@order)
      end

    private

    def set_order
        @order = current_user.restaurant.orders.where(status: 'open').find(params[:order_id])
    end
end
