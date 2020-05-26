class ExpenseType < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :order, presence: true, numericality: true
end
