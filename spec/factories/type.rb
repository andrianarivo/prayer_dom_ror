FactoryBot.define do
  factory :type do
    label { Faker::Lorem.word }
    subject { Faker::Name.first_name }
    description { Faker::Lorem.sentence }
    prayer_duration { 1 }
    association :topic
    association :tag
  end
end
