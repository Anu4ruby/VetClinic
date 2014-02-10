class Appointment < ActiveRecord::Base
  belongs_to :vet_doctor
  belongs_to :pet
  
  validate :date_of_visit_cannot_be_in_past
  validates :pet_id, presence: true
  validates :customer_id, presence: true
  validates :reason_for_visit, presence: true
  
  def date_of_visit_cannot_be_in_past
    errors.add(:date_of_visit, "Visit date can't be blank and can't be in past" ) if
      !date_of_visit.blank? and date_of_visit < Date.today
  end

end
