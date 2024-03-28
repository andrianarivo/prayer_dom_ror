FactoryBot.define do
  factory :topic do
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    association :tag
  end
end
