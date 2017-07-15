#Create Users
10.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: Faker::Internet.unique.password
  )
end
users = User.all

15.times do
  Wiki.create!(
    title: Faker::TwinPeaks.unique.character,
    body: Faker::TwinPeaks.unique.quote,
    user: users.sample
  )
end
wikis = Wiki.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
