require 'httparty'

class Recipe < ApplicationRecord

    has_many :ingredients



    # Will probably handle large searches with multiple results by calling the EDAMAM API client side
    # This server side search will be mostly for searching based on a users pantry


    # for now it'll stay like this

    def self.search(query)

        response = HTTParty.get("https://api.edamam.com/api/recipes/v2?type=public&q=#{query}&app_id=#{Rails.application.credentials.edamam[:app_id]}&app_key=#{Rails.application.credentials.edamam[:app_key]}&random=true").body

        result = JSON.parse response, symbolize_names: true

    
        puts result[:hits].first
    end

end