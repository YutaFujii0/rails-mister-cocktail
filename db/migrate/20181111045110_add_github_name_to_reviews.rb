class AddGithubNameToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :github_name, :string
  end
end
