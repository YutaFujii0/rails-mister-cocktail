

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
doc = JSON.parse(open(url).read)

Ingredient.destroy_all if Rails.env.development?

puts 'Start creating...'
doc['drinks'].each do |element|
  Ingredient.create(name: element['strIngredient1'])
end
puts 'Finished'
