# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# rake db:setup
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

stores = Store.create([
    { name: "Waltmart", street: "370 La Bonte St", number: "2344", zip_code: "804010", city: "Dillon", country: "USA" },
    { name: "Mi Comisariato", street: "Urdesa Central", number: "13", zip_code: "50939", city: "Guayaquil", country: "Ecuador" },
    { name: "Supermaxi", street: "Alban Borja", number: "10", zip_code: "903421", city: "Quito", country: "Ecuador" },
])

categories = Category.create([
    { name: "Computer" },
    { name: "Plants" },
    { name: "Movies" },
    { name: "Cell Phones" }
])

keywords = Keyword.create([
    { name: "computer", category_id: categories[0].id },
    { name: "computadora", category_id: categories[0].id },
    { name: "compu", category_id: categories[0].id },
    { name: "compus", category_id: categories[0].id },
    { name: "plants", category_id: categories[1].id },
    { name: "plantas", category_id: categories[1].id },
    { name: "plan", category_id: categories[1].id },
    { name: "movie", category_id: categories[2].id },
    { name: "movies", category_id: categories[2].id },
    { name: "pelicula", category_id: categories[2].id },
    { name: "celular", category_id: categories[3].id },
    { name: "cell", category_id: categories[3].id },
    { name: "phone", category_id: categories[3].id },
])

products = Product.create([
    { name: "Lenovo Flex", color: "red", category_id: categories[0].id, size: 0, price: 600.00, store_id: stores[0].id },
    { name: "Asus Zenbook", color: "grey", category_id: categories[0].id, size: 10, price: 900.00, store_id: stores[0].id },
    { name: "Toshiba Satellite", color: "blue", category_id: categories[0].id, size: 10, price: 1200.00, store_id: stores[0].id },
    { name: "Rose", color: "red", category_id: categories[1].id, size: 10, price: 15.50, store_id: stores[0].id },
    { name: "Mad Max Fury Road", color: "", category_id: categories[2].id, size: 10, price: 10.50, store_id: stores[2].id },
    { name: "Edge of Tomorrow", color: "", category_id: categories[2].id, size: 10, price: 10.50, store_id: stores[2].id },
    { name: "Scott Pilgrim", color: "", category_id: categories[2].id, size: 10, price: 10.50, store_id: stores[2].id },
    { name: "Mother!", color: "", category_id: categories[2].id, size: 10, price: 10.50, store_id: stores[2].id },
    { name: "Xioami Pocophone", color: "red", category_id: categories[3].id, size: 10, price: 600.50, store_id: stores[1].id },
])