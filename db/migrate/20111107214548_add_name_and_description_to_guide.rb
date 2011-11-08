class AddNameAndDescriptionToGuide < ActiveRecord::Migration
  def change
    add_column :guides, :name, :string
    add_column :guides, :description, :text
  end
end
