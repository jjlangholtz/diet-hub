class AddDieterRefToGroceryLists < ActiveRecord::Migration
  def change
    add_reference :grocery_lists, :dieter, index: true
  end
end
