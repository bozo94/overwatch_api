namespace :database do 
  desc "Import heros and abilities from API"
  task :import_heros_and_abilities_from_api => :environment do 
    domain = "https://overwatch-api.net/api/v1/ability" 
    api_content = HTTParty.get(domain)
    current_page = 1
    while(true)  
      heros_and_abilities = api_content["data"]
      heros_and_abilities.each do |hero_and_ability|
        puts "importing ability no #{hero_and_ability["id"]}"
        ability = Ability.new(
          name: hero_and_ability["name"],
          description: hero_and_ability["description"],
          is_ultimate: hero_and_ability["is_ultimate"]
        )
        if Hero.find_by(real_name: hero_and_ability["hero"]["real_name"])
          ability.hero = Hero.find_by(real_name: hero_and_ability["hero"]["real_name"])
        else
          hero = Hero.new(
            name: hero_and_ability["hero"]["name"],
            real_name: hero_and_ability["hero"]["real_name"],
            health: hero_and_ability["hero"]["health"],
            armour: hero_and_ability["hero"]["armour"],
            shield: hero_and_ability["hero"]["shield"]
          )
          puts "Hero #{hero.real_name} saved" if hero.save
          ability.hero = hero
        end
        ability.save
      end
      break if api_content["next"].nil?
      api_content = HTTParty.get(api_content["next"])

    end
  end
end