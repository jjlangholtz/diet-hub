class Diet < ActiveRecord::Base
  has_many :foods, as: :edible
  has_and_belongs_to_many :recipes

  belongs_to :dieter

  validates :name, presence: true
end
