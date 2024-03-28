FactoryBot.define do
  factory :tag do
    label { Faker::Lorem.word }
  end
end
