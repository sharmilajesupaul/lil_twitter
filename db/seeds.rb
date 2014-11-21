require 'faker'

10.times do |user|

  user = User.create(username: Faker::Internet.user_name)
  tweet = user.tweets.create(content: Faker::Hacker.say_something_smart)
  # user.followers.create(username: Faker::Internet.user_name)
  # user.followers.create(username: Faker::Internet.user_name)
end

User.all.each do |user|
  user.followers << User.all.sample(3)
end




#tweets
