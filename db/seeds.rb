# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Product.destroy_all

category1 = Category.create(name: 'category 1')
category2 = Category.create(name: 'category 2')
category3 = Category.create(name: 'category 3')
#formas de agregar y asignarle una categoria a un producto
Product.create(name: 'product 1', price: 100, category_id: category1.id)
Product.create(name: 'product 2', price: 150, category: category1)
category1.products << Product.create(name: 'product 3', price: 180)

Product.create(name: 'product 3', price: 100, category: category2)
Product.create(name: 'product 4', price: 150, category: category2)

Product.create(name: 'product 5', price: 100, category: category3)
Product.create(name: 'product 6', price: 150, category: category3)
