class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  # add a has_many relationship to bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
