require_relative "lib/dog.rb"
require_relative "lib/park.rb"
require_relative "lib/watcher.rb"

featherstone = Park.new("Featherstone Community Park", "106 Featherstone Lane", 6, 22)
greenbrier = Park.new("Greenbrier Dog Park", "555 Greenbrier Court")

tom = Watcher.new("Tom", 33)
sheila = Watcher.new("Sheila", 37)

frankie = Dog.new("Frankie", sheila, featherstone, 4,"mutt", "ball")
grumbles = Dog.new("Grumbles McGunderson", tom, featherstone, 14, "pug", "the ennui of being alive")
bippy = Dog.new("Bippy", sheila, greenbrier, 7, "maltese", "her own tail")

puts "Watcher.all works?"
puts Watcher.all.length === 2

puts "Dog.all works?"
puts Dog.all.length === 3

puts "Park.all works?"
puts Park.all.length === 2


puts ".oldest_watcher works?"
puts Watcher.oldest_watcher === sheila

puts "#dogs works?"
puts featherstone.dogs.length === 2

puts "#watchers works?"
puts greenbrier.watchers.length === 1

puts "#dogs works?"
puts sheila.dogs.length === 2

puts "#favorite_parks works?"
puts sheila.favorite_parks.length === 2
puts tom.favorite_parks.length === 1

puts "Park.open_latest works?"
puts Park.open_latest === featherstone

puts "Park.most_popular works?"
puts Park.most_popular === featherstone