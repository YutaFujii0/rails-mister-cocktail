class SetDefalutToImagePathInCocktails < ActiveRecord::Migration[5.2]
  def change
    change_column_default :cocktails, :image_path, Cocktail::SAMPLE_IMAGE.sample
  end
end
