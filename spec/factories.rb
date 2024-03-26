FactoryBot.define do
  factory :type do
    label { Faker::Lorem.word }
    subject { Faker::Name.first_name }
    description { Faker::Lorem.sentence }
    prayer_duration { 1 }
    association :topic
    association :tag
  end

  factory :topic do
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    association :tag
  end

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
