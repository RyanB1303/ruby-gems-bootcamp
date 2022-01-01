# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(1..5).each do |i|
  User.create({
    email: "user_#{i}_test@example.com",
    password: 123456,
    password_confirmation: 123456
  })
end
30.times do 
  Course.create({
    title: Faker::Educator.course_name,
    description: Faker::GreekPhilosophers.quote,
    user_id: User.find(User.pluck(:id).sample).id
  })
end