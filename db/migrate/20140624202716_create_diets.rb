class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :name
      t.string :discription

      t.timestamps
    end
  end
end
