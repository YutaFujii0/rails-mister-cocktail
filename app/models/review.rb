class Review < ApplicationRecord
  belongs_to :cocktail

  # validates :name, length: {max: 15}
  validates :content, presence: true
  validates :rating, presence: true
end
