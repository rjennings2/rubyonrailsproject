class Person < ApplicationRecord
  belongs_to :planet
  has_many :starships
  validates :name, presence: true
  validates :height, presence: true
end
