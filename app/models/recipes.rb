class Recipes < ActiveRecord::Base
  has_many :foods, as: :edible
  validates :name, presence: true
end