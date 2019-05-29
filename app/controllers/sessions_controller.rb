class SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
    @restaurant = current_user.restaurant
    raise
    @order = Order.create(status: "open", restaurant: @restaurant) if @restaurant.orders.where(status: "open").empty?
  end
end
