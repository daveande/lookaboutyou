class CreateCaves < ActiveRecord::Migration
  def change
    create_table :caves do |t|
      t.string :cafe_name
      t.string :address
      t.string :zip
      t.text :cafe_description
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
