# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FOOD_GROUP_NAMES = %w[vegetables fish shellfish meat eggs nuts fats fruit spices]
VEGETABLES = %w[artichoke arugla asparagus avocados beets broccoli cabbage carrots cauliflower celery collards cucumber eggplant endive fennel garlic jicama kale kohlrabi leek mushroom olive onion parsnip pepper pumpkin purslane radish romaine rutabaga spinach squash tomato watercress cassava potato yam taro]
FISH = %w[anchovy bass cod eel haddock halibut herring mackerel monkfish mullet perch rockfish salmon sardine tilapia tuna walleye]
SHELLFISH = %w[abalone clam crab crayfish lobster mussel oyster prawn scallop shrimp]
MEAT = %w[beef chicken goat lamb pork alligator bear buffalo caribou duck elk emu goose pheasant kangaroo ostrich quail rabbit snake turkey venison]
EGGS = %w[chicken goose roe/caviar duck pheasant emu quail]
NUTS_SEEDS = %w[almonds hazelnuts hempseeds macadamias peacans pistachios walnuts]
FATS_OILS = %w[ avocado butter coconut lard macadamia olive sesame tallow walnut]
FRUITS = %w[apple apricot banana cantalope cherry coconut fig grapefruit grapes guava kiwi lemon lime lychee mango nectarine
            orange papaya peach pear persimmon plum pomegranate rhubarb strawberry tangerine watermelon]
SPICES_HERBS = %w[anise basil cilantro cinnamon cloves cumin dill fennel ginger mint nutmeg oregano paprika peppermint
                  rosemary sage stevia tarragon thyme turmeric]

# ^^ add brazil nuts, pine nuts, pumpkin seeds, sesame seeds, sunflower seeds, derivative butters
# left off oil from most... add => unprocessed palm oil
# add passion fruit, star fruit, goji berries
# add black pepper, cayenne pepper, chili pepper, coriander seeds, mustard seeds

FOOD_GROUP_NAMES.each do |name|
  food_group = FoodGroup.new(name: name)
  food_group.save
end

VEGETABLES.each do |name|
  FoodGroup.find_by_name('vegetables').foods.create(name: name)
end

FISH.each do |name|
  FoodGroup.find_by_name('fish').foods.create(name: name)
end

SHELLFISH.each do |name|
  FoodGroup.find_by_name('shellfish').foods.create(name: name)
end

MEAT.each do |name|
  FoodGroup.find_by_name('meat').foods.create(name: name)
end

EGGS.each do |name|
  FoodGroup.find_by_name('eggs').foods.create(name: name)
end

NUTS_SEEDS.each do |name|
  FoodGroup.find_by_name('nuts').foods.create(name: name)
end

FATS_OILS.each do |name|
  FoodGroup.find_by_name('fats').foods.create(name: name)
end

FRUITS.each do |name|
  FoodGroup.find_by_name('fruit').foods.create(name: name)
end

SPICES_HERBS.each do |name|
  FoodGroup.find_by_name('fruit').foods.create(name: name)
end
