class Holiday < ApplicationRecord
  belongs_to :user
  has_many :stores

  validates :name, presence: true
end
