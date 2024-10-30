class Person < ApplicationRecord
  belongs_to :planet
  has_many :starships
end
