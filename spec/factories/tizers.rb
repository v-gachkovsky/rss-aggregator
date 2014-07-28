# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tizer do
    name { |n| "tizer_#{n}" }
    feed_id { |n| n }
    new_tizer 1 
    read false 
    notify false
    tags { |n| "tag_#{n}" }
    association :feed, factory: :feed
  end
end
