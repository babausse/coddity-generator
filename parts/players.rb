def generate_players(cities, champions)
  return Array.new(30).map.with_index do |player, index|
    Faker::Number.unique.clear
    {
      playerId: index + 1,
      name: Faker::TvShows::BreakingBad.unique.character,
      city: cities.sample,
      champions: Array.new(3).map do
        {
          championId: Faker::Number.unique.between(1, 30)
        }
      end
    }
  end
end