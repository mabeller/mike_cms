json.array!(@contracts) do |contract|
  json.extract! contract, :id, :plan_id, :hnumber, :organization, :plan_type
  json.url contract_url(contract, format: :json)
end
