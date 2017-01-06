class User < ApplicationRecord
  has_many :user_moods
  has_many :moods, through: :user_moods
  has_many :comments
end
