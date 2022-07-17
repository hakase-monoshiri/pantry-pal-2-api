require 'httparty'

class Recipe < ApplicationRecord


    def self.search(query)

        results = HTTParty.get("https://api.edamam.com/api/recipes/v2?type=public&q=#{query}&app_id=#{Rails.application.credentials.edamam[:app_id]}&app_key=#{Rails.application.credentials.edamam[:app_key]}&random=true").hits

        results[0..9]
    end

end