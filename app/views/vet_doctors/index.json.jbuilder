json.array!(@vet_doctors) do |vet_doctor|
  json.extract! vet_doctor, :id, :name, :address, :city, :state, :zip, :school, :yrs_in_practice
  json.url vet_doctor_url(vet_doctor, format: :json)
end
