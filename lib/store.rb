class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_products

  before_destroy :disallow_destroying_non_empty_stores

  def must_carry_products
    if [mens_apparel, womens_apparel].none?
      errors.add(:mens_apparel, "apparel of some kind must be true")
      errors.add(:womens_apparel, "apparel of some kind must be true")
    end
  end

  private
  def disallow_destroying_non_empty_stores
    if self.employees.size > 0
      throw :abort
    end
  end
end
