product = [
  [ "Samsung Galaxy S", "The Samsung Galaxy S (Super Smart) series is a line of high-end smartphones that has co-existed with the Galaxy Note line as being Samsung's flagship smartphones.", 21200.50],
  [ "Samsung Galaxy Note", "The Samsung Galaxy S (Super Smart) series is a line of high-end smartphones that has co-existed with the Galaxy Note line as being Samsung's flagship smartphones.", 81080.50],
  [ "Samsung Galaxy Alpha", "The Samsung Galaxy S (Super Smart) series is a line of high-end smartphones that has co-existed with the Galaxy Note line as being Samsung's flagship smartphones.", 52421.50],
  [ "Samsung Galaxy C series", "The Samsung Galaxy S (Super Smart) series is a line of high-end smartphones that has co-existed with the Galaxy Note line as being Samsung's flagship smartphones.", 11999.50]
]

category = [ 'Shoes', 'Toys', 'Phones']

 category.each do |name|
   Category.create(name:name)
 end

# product.each do |name, description, price|
#   Product.create( name: name, description: description, price: price )
# end
