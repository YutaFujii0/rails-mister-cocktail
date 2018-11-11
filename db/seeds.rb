require_relative 'category'

puts 'delete start'
Dose.destroy_all if Rails.env.development?
Cocktail.destroy_all if Rails.env.development?
Ingredient.destroy_all if Rails.env.development?
Review.destroy_all if Rails.env.development?
puts 'delete complete'
##############################################################
# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# doc = JSON.parse(open(url).read)


puts 'Start creating...'
# doc['drinks'].each do |element|
#   Ingredient.create(name: element['strIngredient1'])
# end
Ingredient.create(INGREDIENTS_SEED)
puts 'Finished'

##############################################################

attributes = [
  [{
    name: "New York",
    color: "red",
  },
    "vendor/new_york.jpg"],
  [{
    name: "Golden Cadillac",
    color: "cream",
  },
    "vendor/golden_cadillac.jpg"],
  [{
    name: "B52",
    color: "brown",
  },
    "vendor/b52.jpg"],
  [{
    name: "Gulf Stream",
    color: "blue",
  },
    "vendor/gulf_stream.jpg"],
  [{
    name: "Gimlet",
    color: "white",
  },
    "vendor/gimlet.jpg"],
  [{
    name: "Gin Tonic",
    color: "clear",
  },
    "vendor/gin_tonic.jpg"],
  [{
    name: "King's Valley",
    color: "green",
  },
    "vendor/kings_valley.jpg"],
  [{
    name: "Alexsander",
    color: "cream",
  },
    "vendor/alexander.jpg"],
  # [{
  #   name: "Old Fashoned",
  #   color: "orange",
  # },
  #   "vendor/old_fashoned.jpg"],
  [{
    name: "Long Island Iced Tea",
    color: "brown",
  },
    "vendor/long_island_iced_tea.jpg"]
]

puts 'Start creating...'
attributes.each do |attribute|
  cocktail = Cocktail.new(attribute[0])
  cocktail.image_path = File.open(attribute[1])
  cocktail.save!
  puts "next"
end
# Cocktail.create(attributes)
puts 'Finished'
