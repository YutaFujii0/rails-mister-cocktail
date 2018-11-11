class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :description, length: { maximum: 100 }
  validates_uniqueness_of :cocktail_id, :scope => :ingredient_id
end
