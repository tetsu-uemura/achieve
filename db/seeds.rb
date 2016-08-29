# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do |n|
  email = Faker::Internet.email
  name = Faker::Japanese::Name.name
  password = "password"
  User.create!(email: email,
               name: name,
               password: password,
               password_confirmation: password,
               )
end


100.times do |n|
  @f = User.where('id >= ?', rand(User.first.id..User.last.id)).first
  Blog.create!(
    title: "あああ",
    content:"あああ",
    user_name:@f.name,
    user_id:@f.id
  )
end
