class Store < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :holiday
  belongs_to :place

  validates :name, presence: true
  validates :contact, presence: true
  validates :description, presence: true
  validates :opening, presence: true
  validates :closing, presence: true
  validates :coordinates, presence: true

  has_one_attached :image
end
