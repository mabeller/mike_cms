json.array!(@ma_enrollments) do |ma_enrollment|
  json.extract! ma_enrollment, :id, :geoID, :hnumber, :enrollment, :enrollment_at
  json.url ma_enrollment_url(ma_enrollment, format: :json)
end
