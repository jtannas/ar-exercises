class Employee < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :store
  validates :hourly_rate, :inclusion => {:in => 0..60}
  belongs_to :store
end
