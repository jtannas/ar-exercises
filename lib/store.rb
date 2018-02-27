class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_products

  def must_carry_products
    if [mens_apparel, womens_apparel].none?
      errors.add(:mens_apparel, "apparel of some kind must be true")
      errors.add(:womens_apparel, "apparel of some kind must be true")
    end
  end
end
