# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
w = Worker.create(name: "Jorge", mail: "jorge@hotmail.com")
i = Inventory.create(serial: 1, description: "Llanta 205,17,40", size: 17)
o = Operation.create(worker: t, inventory: i)