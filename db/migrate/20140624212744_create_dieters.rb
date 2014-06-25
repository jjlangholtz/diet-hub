class CreateDieters < ActiveRecord::Migration
  def change
    create_table :dieters do |t|
      t.string :name
      t.integer :weight

      t.timestamps
    end
  end
end
