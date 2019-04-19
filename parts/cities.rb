def generate_cities
  return Array.new(5).map.with_index do |city, index|
    {
      cityId: index + 1,
      cityName: Faker::Address.city
    }
  end
end