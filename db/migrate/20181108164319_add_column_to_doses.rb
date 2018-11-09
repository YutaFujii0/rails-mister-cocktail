class AddColumnToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :base, :boolean
  end
end
