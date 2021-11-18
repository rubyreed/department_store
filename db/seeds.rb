# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Item.destroy_all don't need this because of what we added to item.rb in last step

Department.destroy_all

sports = Department.create(name: "Sports")
clothes = Department.create(name: "Clothes")
tools = Department.create(name: "Tools")

sports.items.create(name:'Basketball', body:'all about basketball')
sports.items.create(name:'Lacrosse', body:'all about lacrosse')
sports.items.create(name:'Swimming', body:'all about swimming')


clothes.items.create(name:'Shirts', body:'Wear on top')
clothes.items.create(name:'Pants', body:'Wear on bottom')
clothes.items.create(name:'Jackets', body:'Wear on outside')


tools.items.create(name:'Power Tools', body:'Need to be powered')
tools.items.create(name:'Woodworking', body:'Used with wood')
tools.items.create(name:'Yard Tools', body:'For the yard')



# could also create with our item model (need department_id)
# sports.items.create(name:'Basketball', body:'all about basketball')
# Item.create(name:'Basketball', body:'all about basketball', department_id:sports.id)