require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  test "food has to have a name" do
    food = foods(:nameless)

    assert food.invalid?
  end

# TODO re-write test so that it will pass
#
# test "food knows about its food group" do
#   food_group = FoodGroup.new(name: 'fruits')
#   food = food_group.foods.build(name: 'apple')

#   assert food.edible.include?(food_group)
# end
end
