class Cocktail < ApplicationRecord
  # before_save :default_values

  SAMPLE_IMAGE = ["dozbokbluhvwk22xcswg", "id4qqducogg9oxtupqtp", "yy1izbi5y6ib4hsoqhpa"]

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy

  mount_uploader :image_path, PhotoUploader

  validates :name, presence: true
  validates :name, uniqueness: true

  # def default_values
  #   self.image_path = SAMPLE_IMAGE.sample if self.image_path.file = nil?
  # end
end
