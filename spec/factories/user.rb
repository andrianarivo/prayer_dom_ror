FactoryBot.define do
  factory :user, aliases: [:author] do
    username { Faker::Name.first_name }
    email { Faker::Internet.unique.email }
    password { 'admin1234' }
    password_confirmation { 'admin1234' }
    association :role
  end
end
