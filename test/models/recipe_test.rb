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
end
