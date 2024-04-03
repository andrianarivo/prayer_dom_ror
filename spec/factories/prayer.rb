FactoryBot.define do
  factory :prayer do
    description { Faker::Lorem.sentence }
    association :status
    association :type
    association :user
    association :tag
    datetime_to_pray { Faker::Date.backward(days: 30) }
    location { Faker::Address.city }
    summary { Faker::Lorem.sentence(word_count: rand(2..8)) }
    priority { PriorityLevels::LEVELS.sample }
  end
end
