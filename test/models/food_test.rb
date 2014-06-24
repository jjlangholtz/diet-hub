require 'test_helper'

class FoodTest < ActiveSupport::TestCase

  test "food has a name" do
    food = Food.new
    assert food.invalid?
  end

  # test "food knows it belongs to food groups" do
  #   food_group = FoodGroup.new(name: "Fruits")
  #   food = food_group.foods.build(name: "Apple")
  #
  #   assert food.edible
  # end

end
