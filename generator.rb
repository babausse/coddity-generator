require 'faker'

require './parts/cities.rb'
require './parts/champions.rb'
require'./parts/players'
require'./parts/links'

champions = generate_champions
cities = generate_cities
players = generate_players(cities)

structure = {
  cities: cities,
  champions: champions,
  players: players,
  links: generate_links(champions, players)
}

puts structure.to_json