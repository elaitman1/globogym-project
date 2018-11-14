class User < ApplicationRecord
  has_many :routines
  has_many :exercises, through: :routines
  has_many :user_badges
  has_many :badges, through: :user_badges
  validates_length_of :password, :username, :minimum => 6
  has_secure_password
end
