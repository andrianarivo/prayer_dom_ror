FactoryBot.define do
  factory :note do
    association :prayer
    title { Faker::Lorem.word }
    content { Faker::Lorem.sentence }
  end
end
