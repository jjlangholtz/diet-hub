require 'test_helper'

class FoodTest < ActiveSupport::TestCase

  test "food has a name" do
    food = Food.new
    assert food.invalid?
  end


end
