class Person < ApplicationRecord
  belongs_to :planet
  has_many :starship_people
  has_many :starships, through: :starship_people
  validates :name, presence: true
  validates :height, presence: true
end
