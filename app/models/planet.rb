class Planet < ApplicationRecord
  has_many :people
  has_many :starships, through: :people
  validates :name, presence: true
  validates :terrain, presence: true
end