require 'test_helper'

class RecipesTest < ActiveSupport::TestCase
  test "do recipes name exist" do
    cake = Recipes.new

    assert cake.invalid?
  end

  test "recipes knows about foods" do
    recipe = Recipes.new(name: "cake")
    food = recipe.foods.build(name: "Apple")

    assert recipe.foods.include?(food)
  end
end
