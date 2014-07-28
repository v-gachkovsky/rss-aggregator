# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    group "Grouptest"
    user_id { |n| n }
    association :user 
  end
end
