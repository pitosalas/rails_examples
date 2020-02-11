class Course < ApplicationRecord
  has_many :registrations
  has_many :tas
  has_many :students, through: :registrations
  has_many :workers, through: :tas

end
