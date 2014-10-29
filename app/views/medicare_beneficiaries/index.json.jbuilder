json.array!(@medicare_beneficiaries) do |medicare_beneficiary|
  json.extract! medicare_beneficiary, :id, :geo_id, :ma_enrollment, :ffs_beneficiaries, :eligibles, :ma_penetration, :beneficiaries_at
  json.url medicare_beneficiary_url(medicare_beneficiary, format: :json)
end
