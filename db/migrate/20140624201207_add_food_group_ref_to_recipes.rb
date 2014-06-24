class AddFoodGroupRefToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :food_group, index: true
  end
end
