class Starship < ApplicationRecord
  has_many :starship_people
  has_many :people, through: :starship_people
  validates :name, presence: true
  validates :model, presence: true
end
