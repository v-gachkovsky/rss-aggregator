# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    group "Grouptest"
    #group { |n| (n % 2) == 0 ? "Group1" : "Group2" }
    user_id { |n| n }
    association :user, factory: :user
  end
end
