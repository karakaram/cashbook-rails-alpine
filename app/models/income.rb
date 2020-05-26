class Income < ApplicationRecord
  belongs_to :admin_user
  belongs_to :income_type

  validates :name, length: { maximum: 255 }
  validates :price, presence: true, numericality: true
  validates :earned_on, presence: true
end
