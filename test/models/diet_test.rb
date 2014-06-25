require 'test_helper'

class DietTest < ActiveSupport::TestCase
  test "do you has a name" do
    paleo = Diet.new

    assert paleo.invalid?
  end

  test "diet knows about afood " do
    paleo = Diet.new(name: "paleo")
    food = paleo.foods.build(name: "beans")

    assert paleo.foods.include?(food)
  end

  # test "diet knows about recipes " do
  #   paleo = Diet.new(name: "paleo")
  #   recipe = paleo.recipes.build(name: "good stuff")
  #
  #   assert paleo.recipes.exists?
  # end
end
