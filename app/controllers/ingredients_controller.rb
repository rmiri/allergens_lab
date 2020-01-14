class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.sort_by_alergics
    end
    def show
        @ingredient = Ingredient.find(params[:id])
    end
end
