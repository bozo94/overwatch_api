FactoryBot.define do
  factory :hero do
    name { Faker::StarWars.character.split(' ')[0] }
    real_name { Faker::StarWars.character.split(' ') }
    health { [40, 50, 100, 200].sample }
    armour { [40, 50, 100, 200].sample }
    shield { [40, 50, 100, 200].sample }

    after(:create) do |hero|
      create_list(:ability, 10, hero: hero)
    end
  end
end