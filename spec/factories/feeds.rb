# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feed do
    feed { |n| "feedunk_#{n}" }
    group_id { |n| n }
    association :group, factory: :group
  end
end
