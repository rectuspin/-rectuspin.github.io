class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      
      t.string :name 
      t.integer :year_birth
      t.integer :height
      t.integer :weight
      t. string :position
      

      t.timestamps null: false
    end
  end
end
