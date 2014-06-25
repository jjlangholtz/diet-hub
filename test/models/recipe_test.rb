require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "recipes group has a name " do
    recipe = Recipe.new

    assert recipe.invalid?
  end

  test "recipes knows about foods" do
    recipe = Recipe.new(name: "cake")
    food = recipe.foods.build(name: "eggs")

    assert recipe.foods.include?(food)
  end

    test "recipes know about its food groups" do
      recipe = Recipe.new(name: "cake")
      foodgroup = recipe.foods.build(name: "protein")

      assert recipe.foods.include?(foodgroup)
    end

end
