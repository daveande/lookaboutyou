class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :todo_type
      t.string :name
      t.text :description
      t.string :address
      t.string :zip
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
