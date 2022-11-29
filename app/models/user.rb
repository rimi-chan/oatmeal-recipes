class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :oats, dependent: :destroy
  has_many :powders, dependent: :destroy
end
