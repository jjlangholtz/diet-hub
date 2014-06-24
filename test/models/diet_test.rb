require 'test_helper'

class DietTest < ActiveSupport::TestCase
  test "diet has to have a name" do
    diet = Diet.new

    assert diet.invalid?
  end

  test "diet knows about its foods" do
    diet = Diet.new(name: 'primal')
    food = diet.foods.build(name: 'apple')

    assert diet.foods.include?(food)
  end

# TODO ask Clinton why this isn't passing
#
# test "diet knows about its recipes" do
#   diet = Diet.new(name: 'primal')
#   recipe = diet.recipes.build(name: 'eggs and bacon')

#   assert diet.recipes.include?(recipe)
# end
end
