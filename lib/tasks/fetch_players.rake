require "http"
require 'json'

namespace :players do
    desc "Delete notifications olfder than one week "
    task :get => :environment do
    
        @players = HTTP.get("https://raw.githubusercontent.com/RealFevr/challenge/master/data/players.json").body
        result = JSON.parse(@players)
        belenenses = result["data"]["teams"].first["players"]
        puts belenenses

        belenenses.map { |player| Player.create(player)}


    
    end
    end