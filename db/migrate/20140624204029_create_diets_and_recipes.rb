class CreateDietsAndRecipes < ActiveRecord::Migration
  def change
    create_table :diets_recipes, id: false do |t|
    t.belongs_to :diet
    t.belongs_to :recipe
    end
  end
end
