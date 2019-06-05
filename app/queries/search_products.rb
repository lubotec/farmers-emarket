class SearchProducts
  def initialize(params, farmer_id = nil)
    @params = params
    @scope = farmer_id ? Farmer.find(farmer_id).products : Product.all
  end

  def call
    @scope = filter_by_text(@scope, @params[:text]) if @params[:text].present?
    @scope = filter_by_category(@scope, @params[:category]) if @params[:category].present?
    @scope = filter_by_price(@scope, @params[:price]) if @params[:price].present?
    @scope = filter_by_distance(@scope, @params[:distance]) if @params[:distance].present?
    @scope
  end

  def filter_by_text(scope, text)
    scope.search_by_name_and_description(text)
  end

  def filter_by_category(scope, category)
    scope.where(category: category)
  end

  def filter_by_price(scope, price)
    if price == "Descending"
      scope.order(price_cents: :desc)
    elsif price == "Ascending"
      scope.order(price_cents: :asc)
    else
      scope
    end
  end
end
