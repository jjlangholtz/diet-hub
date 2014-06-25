class FoodGroup < ActiveRecord::Base

  CLASSIFICATION = ["vegetables", "fish", "shellfish", "meat", "eggs", "nuts", "fats", "fruit"]
  has_many :foods, as: :edible
  has_many :recipes
  validates :name, presence: true, inclusion: {in: CLASSIFICATION}


  def valid_classification(foodgroup)
    return if :name.blank?


    
  end


end
