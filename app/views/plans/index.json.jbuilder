json.array!(@plans) do |plan|
  json.extract! plan, :id, :name, :parent_id
  json.url plan_url(plan, format: :json)
end
