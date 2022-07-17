require 'httparty'

class Recipe < ApplicationRecord

    has_many :ingredients


    def self.search(query)

        response = HTTParty.get("https://api.edamam.com/api/recipes/v2?type=public&q=#{query}&app_id=#{Rails.application.credentials.edamam[:app_id]}&app_key=#{Rails.application.credentials.edamam[:app_key]}&random=true").body

        result = JSON.parse response, symbolize_names: true

    
        puts result[:hits].first
    end

end