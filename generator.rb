require 'faker'

require './parts/cities.rb'
require './parts/champions.rb'
require'./parts/players'

champions = generate_champions
cities = generate_cities
players = generate_players(cities, champions)

structure = {
  cities: cities,
  champions: champions,
  players: players
}

puts structure.to_json