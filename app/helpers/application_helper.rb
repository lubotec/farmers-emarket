module ApplicationHelper
  def query_hash(query, key_to_update, new_value)
    query = {} if query.blank?
    query[key_to_update] = new_value
    query
  end
end
