require 'faker'

10.times do |user|

  user = User.create(username: Faker::Internet.user_name, password: 'password')
  3.times { user.tweets.create(content: Faker::Hacker.say_something_smart) }
  # user.followers.create(username: Faker::Internet.user_name)
  # user.followers.create(username: Faker::Internet.user_name)
end


User.all.each do |user|
  array = User.all
  array.delete(user)
  user.followers << array.sample(3)
end
