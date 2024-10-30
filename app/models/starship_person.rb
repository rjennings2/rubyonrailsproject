class StarshipPerson < ApplicationRecord
  belongs_to :person
  belongs_to :starship
end
