class Store < ActiveRecord::Base
  has_many :employees
  validates_length_of :name, :minimum =>3
  validates_numericality_of :annual_revenue, greater_than_or_equal_to: 0
  validate :must_carry_at_least_one_of_men_or_women_apparel

  def must_carry_at_least_one_of_men_or_women_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "must have at least one men or women apparel")
    end
  end

end
