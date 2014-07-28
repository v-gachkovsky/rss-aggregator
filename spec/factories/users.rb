# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    #login { |n|  "user_#{n}" }
    password "133333333"
    email { |n|  "email_#{n}@email.com" }
    #role 1 #{ |n| n % 2 == 0 ? 0 : 1 }
    #premium false #{ |n| n % 2 == 0 ? true : false }
    #fb_id { |n| n }
    #vk_id { |n| n }
    #linkedin_id { |n| n }
    #google_id { |n| n }
  end
end
