class Ingredient < ApplicationRecord

    belongs_to :pantry
    belongs_to :recipe

end
