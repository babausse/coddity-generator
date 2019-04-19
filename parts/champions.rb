def generate_champions
  Faker::Number.unique.clear
  return Array.new(30).map.with_index do |champion, index|
    {
      championId: index + 1,
      name: Faker::Games::LeagueOfLegends.unique.champion,
      description: Faker::Lorem.sentences(rand(1..3)).join(' '),
      rank: Faker::Number.unique.between(1, 30)
    }
  end
end