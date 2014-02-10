class CreateVetDoctors < ActiveRecord::Migration
  def change
    create_table :vet_doctors do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :school
      t.integer :yrs_in_practice

      t.timestamps
    end
  end
end
