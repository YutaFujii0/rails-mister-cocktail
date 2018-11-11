class Cocktail < ApplicationRecord
  # before_save :default_values
  COLOR = ['clear', 'white', 'cream', 'brown', 'red', 'orenge', 'yellow', 'green', 'blue', 'others']
  SAMPLE_IMAGE = [
    "dozbokbluhvwk22xcswg",
    "id4qqducogg9oxtupqtp",
    "yy1izbi5y6ib4hsoqhpa",
    "bvd2ueidfpjz75ceclzi",
    "ppgsdfzneym718tgllhd",
    "gi3nrtnzkucbndpffc2t"
  ]

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy

  mount_uploader :image_path, PhotoUploader

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :color, inclusion: { in: [COLOR, nil].flatten }
  # def default_values
  #   self.image_path = SAMPLE_IMAGE.sample if self.image_path.file = nil?
  # end
end
