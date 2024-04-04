FactoryBot.define do
  factory :role do
    title { RoleConstants::ROLES.sample }
  end
end
