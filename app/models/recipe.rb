class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :diets
  has_many :foods, as: :edible
  has_many :food_groups

  validates :name, presence: true
end
