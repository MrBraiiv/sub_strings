random_words = [
  "apple", "banana", "kiwi", "mango", "strawberry", "watermelon", "cherry",
  "peach", "grape", "orange", "pineapple", "plum", "fig", "lemon", "lime",
  "blueberry", "raspberry", "apricot", "melon", "nectarine", "pomegranate",
  "coconut", "guava", "papaya", "passionfruit", "dragonfruit", "lychee",
  "avocado", "blackberry", "cranberry", "gooseberry", "jackfruit", "durian",
  "persimmon", "cantaloupe", "mulberry", "tangerine", "starfruit", "quince",
  "date", "olive", "pumpkin", "carrot", "broccoli", "cucumber", "lettuce",
  "tomato", "potato", "zucchini", "radish", "spinach", "parsley", "garlic",
  "onion", "ginger", "thyme", "basil", "cilantro", "mint", "oregano",
  "rosemary", "sage", "chili", "pepper", "turmeric", "cabbage", "celery",
  "cherry", "walnut", "pecan", "almond", "hazelnut", "chestnut", "cashew",
  "pistachio", "macadamia", "peanut", "sunflower", "chia", "flax", "sesame",
  "corn", "wheat", "barley", "oats", "rye", "rice", "quinoa", "buckwheat",
  "sorghum", "teff"
]
require 'pry-byebug'

def substrings(string, dictionary)
  found_strings =
    dictionary.select do |str|
      string.include?(str)
    end
  
    # p found_strings

  test = found_strings.reduce(Hash.new(0)) do |count, str|
    # binding.pry
    count[str] += 1
    count
  end
  p test
end

substrings("apple kiwi apple", random_words)