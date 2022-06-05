class PantriesController < ApplicationController

    def index
        pantries = Pantry.all
        render json: pantries
    end
    
end
