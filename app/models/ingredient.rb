class Ingredient < ApplicationRecord
  INGREDIENTS = Ingredient.all.map { |ingredient| ingredient.name }
  CATEGORY = [
    "liquor",
    "fruit-juice",
    "non-alcohol drink",
    "others"
  ]
  has_many :doses

  validates :name, presence: true
  validates :name, uniqueness: true¥
end
