# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tizer do
    tizer "MyString"
    feed nil
    new_tizer false
    read false
    notify false
    tags "MyString"
  end
end
