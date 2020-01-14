class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients
    has_many :allergies
    has_many :users, through: :allergies

    def self.sort_by_alergics
        self.all.sort_by { |r| -r.allergies.count }
      end
end
