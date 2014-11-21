require 'faker'
sharmila = User.create(username: "sharmila", email: "tosharmila@gmail.com", password: 'password')
ronald = User.create(username: "ron", email: "ronald.chacon87@gmail.com", password: 'password')
neil = User.create(username: "neil", email: "njlambert@gmail.com", password: 'password')
jarred = User.create(username: "jarred", email: "jarredhare@gmail.com", password: 'password')
brick = User.create(username: "brick", email: "brick@devbootcamp.com", password: 'password')
chris = User.create(username: 'chris', email: "christophermamian@gmail.com", password: 'password')
han = User.create(username: 'han', email: "hankim813@gmail.com", password: 'password')
ryan = User.create(username: 'ryan', email: "whileyryan@gmail.com", password: 'password')
ronald.followers << [sharmila, neil, jarred, brick, chris, han, ryan]
jarred.followers << [sharmila, neil, ronald, brick, chris, han, ryan]
sharmila.followers << [jarred, neil, ronald, brick, chris, han, ryan]

us = [jarred, neil, ronald, brick, chris, han, sharmila, ryan]

5.times do
  us.each do |person|
    person.tweets.create(content: Faker::Hacker.say_something_smart)
  end
end

10.times do |user|

  user = User.create(username: Faker::Internet.user_name, password: 'password')
  3.times { user.tweets.create(content: Faker::Hacker.say_something_smart) }
  # user.followers.create(username: Faker::Internet.user_name)
  # user.followers.create(username: Faker::Internet.user_name)
end


User.all.each do |user|
  3.times do
    new_follower = User.all.sample
    user.followers << new_follower unless new_follower == user
  end
end
