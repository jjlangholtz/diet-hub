require 'test_helper'

class GroceryListTest < ActiveSupport::TestCase
  test "grocery list has to have a name" do
    grocery_list = GroceryList.new

    assert grocery_list.invalid?
  end

  test "grocery lists knows about its foods" do
    grocery_list = GroceryList.new(name: 'kroger')
    food = grocery_list.foods.build(name: 'apple')

    assert grocery_list.foods.include?(food)
  end

  test "grocery list knows who its owner is" do
    dieter = Dieter.new(name: 'josh')
    grocery_list = dieter.grocery_lists.build(name: 'kroger')

    assert_equal "josh", grocery_list.dieter.name
  end
end
