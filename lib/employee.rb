class Employee < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :store
  validates :hourly_rate, :inclusion => {:in => 40..200}
  belongs_to :store

  # before_save :create_password  # Triggers on changes as well -_-
  before_create :create_password

  private
  def create_password
    self.password = ('0'..'z').to_a.shuffle[0,8].join
    # self.save  # for after_create
  end
end
