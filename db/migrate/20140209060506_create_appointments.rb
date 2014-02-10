class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date_of_visit
      t.integer :pet_id
      t.integer :customer_id
      t.integer :vet_doctor_id
      t.boolean :reminder_required
      t.text :reason_for_visit

      t.timestamps
    end
  end
end
