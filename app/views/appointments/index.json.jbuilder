json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :pet_id, :customer_id, :vet_doctor_id, :reminder_required, :reason_for_visit
  json.url appointment_url(appointment, format: :json)
end
