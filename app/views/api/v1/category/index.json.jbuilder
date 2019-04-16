json.category @categories.each do |category|
  json.id category.id
  json.name category.name
end