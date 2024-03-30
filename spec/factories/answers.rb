FactoryBot.define do
  factory :answer do
    association :prayer
    content { Faker::Lorem.sentence }
  end
end
