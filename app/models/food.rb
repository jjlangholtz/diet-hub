class Food < ActiveRecord::Base
  belongs_to :edible, polymorphic: true

  validates :name, presence: true
end
