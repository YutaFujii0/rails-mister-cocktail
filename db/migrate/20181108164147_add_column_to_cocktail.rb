class AddColumnToCocktail < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :color, :string
    add_column :cocktails, :image_path, :string
    add_column :cocktails, :description, :string
  end
end
