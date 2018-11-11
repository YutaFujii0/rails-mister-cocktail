class Review < ApplicationRecord
  belongs_to :cocktail

  # validates :name, length: {max: 15}
  validates :content, presence: true
  validates :rating, presence: true

  def days_ago
    min_ago = ((Time.now - created_at) / 60).round
    if min_ago < 60
      "#{min_ago} min ago"
    elsif min_ago / 60 < 24
      hour_ago = min_ago / 60
      "#{hour_ago} #{'hour'.pluralize(hour_ago)} ago"
    else
      day_ago = min_ago / 60 / 24
      "#{day_ago} #{'day'.pluralize(day_ago)} ago"
    end
  end
end
