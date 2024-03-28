FactoryBot.define do
  factory :prayer do
    description { Faker::Lorem.sentence }
    association :status
    association :type
    association :user
    association :tag
    datetime_to_pray { Faker::Date.backward(days: 30) }
    location { Faker::Address.city }
  end
end
