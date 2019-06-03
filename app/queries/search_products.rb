class SearchProducts
  def initialize(params)
    @params = params
    @scope = Product.all
  end

  def call
    @scope = filter_by_text(@scope, @params[:text]) if @params[:text]
    @scope = filter_by_category(@scope, @params[:category]) if @params[:category]
    @scope = filter_by_price(@scope, @params[:price]) if @params[:price]
    @scope
  end

  def filter_by_text(scope, text)
    scope.search_by_name_and_description(text)
  end

  def filter_by_category(scope, category)
    scope.where(category: category)
  end

  def filter_by_price(scope, price)
  end
end
