require 'test_helper'

class GroceryListTest < ActiveSupport::TestCase
  test "grocery list has a name" do
    grocery = GroceryList.new

    assert grocery.invalid?
  end
end
