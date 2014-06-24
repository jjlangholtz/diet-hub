require 'test_helper'

class GroceryListTest < ActiveSupport::TestCase
  test "grocery list has to have a name" do
    grocery_list = GroceryList.new

    assert grocery_list.invalid?
  end
end
