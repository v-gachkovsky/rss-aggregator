# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.upto(10) do |i|
  User.create(email: "mail#{i}@mail.org", password: "sa#{i}fd#{i * 15}hg#{i * i}kj")
end

1.upto(10) do |i|
  Group.create(name: "Group ##{i}", user_id: i)
end

1.upto(10) do |i|
  Feed.create(url: "link to feed", group_id: i)
end

1.upto(10) do |i|
  Tizer.create(name: "Blah-blah-blah", new_tizer: 1, read: 0, notify: 0, tags: "<blah>, <blah-blah>", feed_id: i)
end
