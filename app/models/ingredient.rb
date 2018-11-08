class Ingredient < ApplicationRecord
  INGREDIENTS = Ingredient.all.map { |ingredient| ingredient.name }

  has_many :doses

  validates :name, presence: true
  validates :name, uniqueness: true
end
