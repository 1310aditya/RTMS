json.array!(@p_cats) do |p_cat|
  json.extract! p_cat, :id, :title, :desc
  json.url p_cat_url(p_cat, format: :json)
end
