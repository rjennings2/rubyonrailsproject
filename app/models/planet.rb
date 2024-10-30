class Planet < ApplicationRecord
  has_many :people
  has_many :starships, through: :people
end