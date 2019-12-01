class Store < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :holiday
  belongs_to :place

=begin
  validates :name, presence: true
  validates :contact, presence: true
  validates :description, presence: true
  validates :opening, presence: true
  validates :closing, presence: true
  validates :coordinates, presence: true
=end
  has_one_attached :image
end
