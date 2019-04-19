def generate_links(champions, players)
  deep_links = players.map do |player|
    Faker::Number.unique.clear
    Array.new(3).map do |link|
      {
        championId: Faker::Number.unique.between(1, 30),
        playerId: player[:playerId]
      }
    end
  end
  return deep_links.flatten
end