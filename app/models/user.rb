class User < ApplicationRecord
  has_many :moods
  has_many :comments
end
