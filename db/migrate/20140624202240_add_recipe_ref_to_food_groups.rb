class AddRecipeRefToFoodGroups < ActiveRecord::Migration
  def change
    add_reference :food_groups, :recipe, index: true
  end
end
