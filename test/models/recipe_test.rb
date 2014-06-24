require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "recipe has to have a name" do
    recipe = Recipe.new

    assert recipe.invalid?
  end

  test "recipe knows about its foods" do
    recipe = Recipe.new(name: 'scrambled eggs')
    food = recipe.foods.build(name: 'eggs')

    assert recipe.foods.include?(food)
  end

  test "recipes knows about its food groups" do
    recipe = Recipe.new(name: 'cobb salad')
    food_group = recipe.food_groups.build(name: 'vegetables')

    assert recipe.food_groups.include?(food_group)
  end
end
