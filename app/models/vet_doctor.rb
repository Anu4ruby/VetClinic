class VetDoctor < ActiveRecord::Base
  has_many :appointments
  has_many :pets, through: :appointments
  
  validates :zip, length: { maximum: 5}
  validates :yrs_in_practice, length: { in: 1..100 }
end
