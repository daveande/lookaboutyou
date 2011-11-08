class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :guide_id
      t.integer :todo_id

      t.timestamps
    end
  end
end
