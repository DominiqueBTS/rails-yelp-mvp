class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: %w[chinese japanese french belgian italian] }
  has_many :reviews, dependent: :destroy
end
