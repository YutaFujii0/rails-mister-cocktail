class ChangeDefaultOfImagePathInCocktails < ActiveRecord::Migration[5.2]
  def change
    change_column_default :cocktails, :image_path, from: "yy1izbi5y6ib4hsoqhpa", to: nil
  end
end
