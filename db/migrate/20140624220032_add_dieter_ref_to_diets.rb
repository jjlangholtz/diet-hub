class AddDieterRefToDiets < ActiveRecord::Migration
  def change
    add_reference :diets, :dieter, index: true
  end
end
