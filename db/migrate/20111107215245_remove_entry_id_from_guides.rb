class RemoveEntryIdFromGuides < ActiveRecord::Migration
  def up
    remove_column :guides, :entry_id
  end

  def down
    add_column :guides, :entry_id, :integer
  end
end
