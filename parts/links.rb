def generate_links(champions, players)
  links = []
  championIds = champions.map { |c| c[:championId] }
  players.each do |player|
    selected = []
    3.times do
      selected << (championIds - selected).sample
      links << {
        championId: selected.last,
        playerId: player[:playerId]
      }
    end
  end
  return links
end