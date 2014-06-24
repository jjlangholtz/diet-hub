class AddEdibleRefToFoods < ActiveRecord::Migration
  def change
    add_reference :foods, :edible, polymorphic: true, index: true
  end
end
