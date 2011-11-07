class CreateLearns < ActiveRecord::Migration
  def change
    create_table :learns do |t|
      t.string :learn_name
      t.string :address
      t.string :zip
      t.text :learn_description
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
