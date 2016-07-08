# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  10.times do
  lists = List.create( title: Faker::Name.title )
  2.times do
  Task.create(body: Faker::Lorem.paragraph, list_id: lists.id, completed: rand(0..1))
  end
end
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
