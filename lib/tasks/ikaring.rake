require 'json'
namespace :ikaring do

  task :import_json => :environment do 
    #a = Battle.first
    #a.result = "lose"
    #a.save

    File.open("lib/tasks/iksm.json") do |file|
      data = JSON.load(file)
      data["results"].each{ |r|
        b = Battle.new
        b.user_id = data["unique_id"]
        b.result = r["my_team_result"]["key"]
        b.udemae = r["udemae"]["name"] if r["udemae"]
        b.rule = r["rule"]["name"]
        b.kill = r["player_result"]["kill_count"]
        b.death = r["player_result"]["death_count"]
        b.assist = r["player_result"]["assist_count"]
        b.special = r["player_result"]["special_count"]
        b.weapon_id = r["player_result"]["player"]["weapon"]["id"]
        b.stage_id = r["stage"]["id"]
        b.save
      }
    end
  end

end
