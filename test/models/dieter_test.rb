require 'test_helper'

class DieterTest < ActiveSupport::TestCase
  test "dieter has to have a name" do
    dieter = Dieter.new

    assert dieter.invalid?
  end

  test "dieter knows about its foods" do
    dieter = Dieter.new(name: 'josh')
    food = dieter.foods.build(name: 'apple')

    assert dieter.foods.include?(food)
  end

  test "dieter knows about its diet" do
    dieter = Dieter.new(name: 'josh')
    dieter.build_diet(name: 'primal')

    assert_equal "primal", dieter.diet.name
  end

  test "dieter knows about its grocery lists" do
    dieter = Dieter.new(name: 'josh')
    grocery_list = dieter.grocery_lists.build(name: 'kroger')

    assert dieter.grocery_lists.include?(grocery_list)
  end

  test "dieter knows about recipes from the diet" do
    dieter = Dieter.new(name: 'josh')
    diet = dieter.build_diet(name: 'primal')
    diet.recipes.build(name: 'eggs and bacon')

    assert dieter.recipes
  end
end
