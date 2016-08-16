# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create([
{name: "Macbook", price: 1000.24, description: "Great Buy", promoted: true, stock: 24},
{name: "Chromebook", price: 800.99, description: "Amazing Value", promoted: true, stock: 11}
])
