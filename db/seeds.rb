# Data initialization here
require_relative '../config/environment.rb'
require 'faker'

User.destroy_all
Post.destroy_all

20.times do
    user = User.create
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.age = Faker::Number.between(from: 1, to: 100)
    user.location = Faker::Address.city + ", " + Faker::Address.state
    user.date_of_birth = Faker::Date.between(from: '1921-01-01', to: '2021-01-01')
    user.mobile = Faker::PhoneNumber.phone_number
    user.email = Faker::Internet.email
    user.save
end

100.times do
    post = Post.create
    post.title = Faker::Lorem.sentence(word_count: 2,supplemental: true, random_words_to_add: 10)
    post.message = Faker::Lorem.paragraph(sentence_count: 1, supplemental: true, random_sentences_to_add: 10)
    post.save
end