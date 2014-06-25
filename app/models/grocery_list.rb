class GroceryList < ActiveRecord::Base
  has_many :foods, as: :edible

  belongs_to :dieter

  validates :name, presence: true
end
