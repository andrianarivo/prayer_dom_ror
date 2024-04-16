FactoryBot.define do
  factory :tag do
    label { Faker::Lorem.word }
    color { '#2c62b4' }
    bg_color { '#e1f6ff' }
  end
end
