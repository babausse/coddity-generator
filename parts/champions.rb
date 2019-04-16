def generate_champions
  championId = 1
  champions = []

  while true
    begin
      championName = Faker::Games::LeagueOfLegends.unique.champion
      description = Faker::Lorem.sentences(rand(1..3)).join(' ')
      champions << {
        championId: championId,
        name: championName,
        description: description
      }
      championId = championId + 1
    rescue Faker::UniqueGenerator::RetryLimitExceeded => exception
      break;
    end
  end

  # Enrich the champions with a rank from 1 to #length
  max = champions.count
  champions.each do |champion|
    champion[:rank] = Faker::Number.unique.between(1, max)
  end

  return champions
end