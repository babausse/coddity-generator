def generate_players
  playerId = 1
  players = []

  10.times do
    playerName = Faker::TvShows::BreakingBad.unique.character
    players << {
      playerId: playerId,
      name: playerName,
      city: Faker::Address.city
    }
    playerId = playerId + 1
  end
  
  return players
end