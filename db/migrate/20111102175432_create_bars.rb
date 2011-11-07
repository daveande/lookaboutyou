class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :bar_name
      t.string :address
      t.string :zip
      t.text :bar_description
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
