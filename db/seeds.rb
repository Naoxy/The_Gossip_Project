# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'





10.times do 
  city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end
puts "10 villes ont été crées"

10.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.word, email: Faker::Address.mail_box, age:Faker::Number.between(from: 20, to: 65), city_id: City.all.sample.id)
end
puts "10 utilisateurs ont été crées"

20.times do 
  gossip = Gossip.create(title: Faker::Emotion.noun, content: Faker::Quote.famous_last_words, user: User.all.sample)
end
puts "10 gossips ont été crées"

10.times do
  tag = Tag.create(title: Faker::JapaneseMedia::DragonBall.character)
end
puts "10 tags ont été crées"

20.times do
  comment = Comment.create(content: Faker::Quote.famous_last_words)
end
puts "10 commentaires ont été crées"


