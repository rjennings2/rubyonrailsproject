# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'
require 'json'
require 'faker'

# Seed Planets from SWAPI
planet_response = URI.open('https://swapi.dev/api/planets/').read
planet_data = JSON.parse(planet_response)

planet_ids = []
planet_data['results'].each do |data|
  planet = Planet.create!(name: data['name'], terrain: data['terrain'], population: data['population'])
  planet_ids << planet.id
end

# Seed People from SWAPI
person_response = URI.open('https://swapi.dev/api/people/').read
person_data = JSON.parse(person_response)

person_data['results'].each do |data|
  planet_id = planet_ids.sample
  Person.create!(
    name: data['name'],
    height: data['height'],
    mass: data['mass'],
    hair_color: data['hair_color'],
    planet_id: planet_id
  )
end

# Generate Fake Starship Data
10.times do
  Starship.create!(
    name: Faker::Vehicle.make_and_model,
    model: Faker::Vehicle.manufacturer,
    crew: rand(1..10).to_s
  )
end

# link fake starships to people
Starship.all.each do |starship|
  random_person = Person.order("RANDOM()").first  # Randomly pick a person
  StarshipPerson.create!(starship: starship, person: random_person) if random_person
end
