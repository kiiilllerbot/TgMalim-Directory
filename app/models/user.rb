class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :places
  has_many :categories
  has_many :holidays
  has_many :stores
  has_many :public_holidays

  has_one_attached :image
end
