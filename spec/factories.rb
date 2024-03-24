FactoryBot.define do
  factory :tag do
    label { Faker::Lorem.word }
  end

  factory :role, aliases: [:admin] do
    title { 'admin' }
  end

  factory :user do
    username { Faker::Name.first_name }
    email { Faker::Internet.unique.email }
    password { 'admin1234' }
    password_confirmation { 'admin1234' }
    association :role
  end
end
