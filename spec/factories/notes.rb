FactoryBot.define do
  factory :note do
    association :prayer
    association :user
    title { Faker::Lorem.word }
    content { Faker::Lorem.sentence }
  end
end
