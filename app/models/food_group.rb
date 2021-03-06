class FoodGroup < ActiveRecord::Base
  belongs_to :recipe
  has_many :foods, as: :edible

  validates :name, presence: true
end
