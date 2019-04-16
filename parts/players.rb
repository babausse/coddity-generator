def generate_players
  playerId = 1
  players = []
  while true
    begin
      playerName = Faker::TvShows::BreakingBad.unique.character
      players << {
        playerId: playerId,
        name: playerName,
        city: Faker::Address.city
      }
      playerId = playerId + 1
    rescue Faker::UniqueGenerator::RetryLimitExceeded => exception
      break;
    end
  end
  return players
end