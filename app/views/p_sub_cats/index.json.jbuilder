json.array!(@p_sub_cats) do |p_sub_cat|
  json.extract! p_sub_cat, :id, :title, :desc
  json.url p_sub_cat_url(p_sub_cat, format: :json)
end
