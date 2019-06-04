module ApplicationHelper
  def query_hash(query, key_to_update, new_value)
    query = {} if query.blank?
    return if query.key?(key_to_update)
    query[key_to_update] = new_value
    query
  end

  def selected_category?(category)
    params[:query].try(:[], :category) == category
  end
end
