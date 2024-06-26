class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category,
            inclusion: { in: %w(chinese italian japanese french belgian) },
            presence: true
  CATEGORY = %w(chinese italian japanese french belgian)
end
