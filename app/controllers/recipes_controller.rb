class RecipesController < ApplicationController
    def index
        @recipes = Recipe.sort_by_ingredients
    end
    def new
        @recipe = Recipe.new
    end
    def create
        recipe = Recipe.create(paramas_recipe)
        if recipe.valid?
            redirect_to recipes_path
        else
            redirect_to new_recipe_path
        end
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    private
    def paramas_recipe
     params.require(:recipe).permit(:name, :user_id, ingredient_ids: [])
    end

end
