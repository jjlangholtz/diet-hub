require 'test_helper'

class FoodGroupTest < ActiveSupport::TestCase
  test "food group has a name " do
    food_group = FoodGroup.new

    assert food_group.invalid?
  end

  test "food group knows about foods" do
    food_group = FoodGroup.new(name: "Fruits")
    food = food_group.foods.build(name: "Apple")

    assert food_group.foods.include?(food)
  end

end
