# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tizer do
    tizer { |n| "tizer_#{n}" }
    feed_id { |n| n }
    new_tizer 1 # { |n| n % 2 == 0 ? true : false }
    read false #{ |n| n % 2 == 0 ? true : false }
    notify false #{ |n| n % 2 == 0 ? true : false }
    tags { |n| "tag_#{n}" }
    association :feed, factory: :feed
  end
end
