# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    password "133333333"
    email { |n|  "email_#{n}@email.com" }
  end
end
