class Starship < ApplicationRecord
  has_many :people
  validates :name, presence: true
  validates :model, presence: true
end
