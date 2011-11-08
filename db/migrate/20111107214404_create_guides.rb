class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.integer :neighborhood_id
      t.integer :entry_id

      t.timestamps
    end
  end
end
