# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sellers = Seller.create(
  [
    {name: 'jake', email: 'jake@boyoy.com', password: 'dragons'},
    {name: 'tina', email: 'tina@boyoy.com', password: 'lumpy'},
    {name: 'Steve', email: 'steve@boyoy.com', password: 'crumpet'}
  ]
)

items = Item.create(
  [
    {title: 'hokay', year: 2015, medium: 'oil', provenance: 'the met', dimensions: '6ftx6ft', seller_id: 1},
    {title: 'big sculpture', year: 2014, medium: 'bronze', provenance: 'the met', dimensions: '6ftx6ft', seller_id: 2},
    {title: 'painting', year: 2012, medium: 'acrylic', provenance: 'the met', dimensions: '6ftx6ft', seller_id: 3}
  ]
)
