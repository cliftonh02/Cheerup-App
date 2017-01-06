class Mood < ApplicationRecord
  has_many :user_moods
  has_many :users, through: :user_moods
  has_many :comments
  validates :name, uniqueness: true

end
