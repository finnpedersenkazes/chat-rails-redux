

# https://github.com/stympy/faker/tree/master/doc

User.destroy_all
Channel.destroy_all
Message.destroy_all

finn = User.create!(email: "finnpedersenkazes@gmail.com", password: "123456")

general_channel = Channel.create!(name: 'general')
paris_channel = Channel.create!(name: 'paris')
react_channel = Channel.create!(name: 'react')

puts 'user: ' + finn.email

puts 'Creating 5 fake messages in General channel ...'
5.times do
  Message.create!(content: Faker::Hacker.say_something_smart, user: finn, channel: general_channel)
end

puts 'Creating 5 fake messages in Paris channel ...'
5.times do
  Message.create!(content: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, user: finn, channel: paris_channel)
end

puts 'Creating 5 fake messages in React channel ...'
5.times do
  Message.create!(content: Faker::ChuckNorris.fact, user: finn, channel: react_channel)
end


puts 'Finished!'
