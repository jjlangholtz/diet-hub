class GroceryList < ActiveRecord::Base
  validates :name, presence: true
end
