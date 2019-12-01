class Category < ApplicationRecord
  belongs_to :user
  has_many :stores

  validates :name, presence: true
  validates :description, presence: true
end
