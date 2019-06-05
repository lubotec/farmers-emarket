class SearchProducts
  attr_reader :current_user
  def initialize(params, farmer_id = nil)
    @params = params
    @current_user = params[:current_user]
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
    else
      scope.order(price_cents: :asc)
    end
  end

  def filter_by_distance(scope, distance)
    searchable = current_user.role_object
    if distance == '< 5km'
      scope.near(searchable.address, 5)
    elsif distance == '< 10km'
      scope.near(searchable.address, 10)
    elsif distance == '< 20km'
      scope.near(searchable.address, 20)
    elsif distance == '< 50km'
      scope.near(searchable.address, 50)
    end
  end
end
