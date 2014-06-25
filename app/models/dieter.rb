class Dieter < ActiveRecord::Base
  has_one :diet
  has_many :foods, as: :edible
  has_many :grocery_lists
  has_many :recipes, through: :diet

  validates :name, presence: true
end
