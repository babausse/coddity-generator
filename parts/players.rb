def generate_players(cities)
  return Array.new(30).map.with_index do |player, index|
    {
      playerId: index + 1,
      name: Faker::TvShows::BreakingBad.unique.character,
      city: cities.sample
    }
  end
end