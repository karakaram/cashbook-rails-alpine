class MonthlyExpense < ApplicationRecord
  belongs_to :expense_type

  validates :price, presence: true, numericality: true
  validates :paid_on, presence: true
end
