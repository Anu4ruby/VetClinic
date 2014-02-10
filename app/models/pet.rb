class Pet < ActiveRecord::Base
  has_many :appointments
  has_many :vet_doctors, through: :appointments
  
  validates :name, length: { maximum: 35}, presence: true
  validates :pet_type, inclusion: { in: %w(cat dog bird),
    message: "must be a dog, cat, or bird" }
  validates :breed, length: { maximum: 35}, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :last_visit_date, presence: true

end
