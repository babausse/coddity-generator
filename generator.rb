require 'faker'
require './parts/champions.rb'
require'./parts/players'
require'./parts/links'

champions = generate_champions
players = generate_players

structure = {
  champions: champions,
  players: players,
  links: generate_links(champions, players)
}

puts structure.to_json