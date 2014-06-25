class Recipe < ActiveRecord::Base
  has_many :foods, as: :edible
  has_many :food_groups
  has_and_belongs_to_many :diets

  validates :name, presence: true
end
