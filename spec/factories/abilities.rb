FactoryBot.define do
  factory :ability do
    name { Faker::StarWars.character.split(' ')[0] }
    description { Faker::Lorem.sentence }
    is_ultimate { false }
    association :hero
  end
end