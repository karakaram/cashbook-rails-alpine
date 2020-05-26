class Expense < ApplicationRecord
  belongs_to :admin_user
  belongs_to :expense_type

  validates :name, length: { maximum: 255 }
  validates :price, presence: true, numericality: true
  validates :paid_on, presence: true
end
