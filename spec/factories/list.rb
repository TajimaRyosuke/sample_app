FactoryBot.define do
  factory :list do
    title { faker::Lorem.characters(number:10)}
    body { faker::Lorem.characters(number:30)}
  end
end