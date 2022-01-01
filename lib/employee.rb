class Employee < ActiveRecord::Base
  belongs_to :store
  validates_presence_of :first_name, :last_name
  validates_numericality_of :hourly_rate, in: 40..200
  validates_associated :store

end
