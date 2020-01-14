class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients ###
  has_many :ingredients, through: :recipe_ingredients

    def self.sort_by_ingredients
      self.all.sort_by { |r| -r.ingredients.count }
    end

end
