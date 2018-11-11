require_relative 'category'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# doc = JSON.parse(open(url).read)

Ingredient.destroy_all if Rails.env.development?

puts 'Start creating...'
# doc['drinks'].each do |element|
#   Ingredient.create(name: element['strIngredient1'])
# end
Ingredient.create(INGREDIENTS_SEED)
puts 'Finished'


Cocktail.destroy_all if Rails.new.development?

attributes = [
  {
    name: "New York",
    color: "red",
    image_path: "vendor/new_york.jpg"
  },
  {
    name: "Golden Cadillac",
    color: "cream",
    image_path: "vendor/golden_cadillac.jpg"
  },
  {
    name: "B52",
    color: "brown",
    image_path: "vendor/b52.jpg"
  },
  {
    name: "Gulf Stream",
    color: "blue",
    image_path: "vendor/gulf_stream.jpg"
  },
  {
    name: "Gimlet",
    color: "white",
    image_path: "vendor/gimlet.jpg"
  },
  {
    name: "Gin Tonic",
    color: "clear",
    image_path: "vendor/gin_tonic.jpg"
  },
  {
    name: "King's Valley",
    color: "green",
    image_path: "vendor/kings_valley.jpg"
  },
  {
    name: "Alexsander",
    color: "cream",
    image_path: "vendor/alexander.jpg"
  },
  {
    name: "Old Fashoned",
    color: "orange",
    image_path: "vendor/old_fashoned.jpg"
  },
  {
    name: "Long Island Iced Tea",
    color: "brown",
    image_path: "vendor/long_island_iced_tea.jpg"
  }
]

puts 'Start creating...'
Cocktail.create(attributes)
puts 'Finished'
