class Group < ActiveRecord::Base
  belongs_to :user
  has_many :feeds

  validates :name, length: { in: 2..100 }, uniqueness: { scope: :user, message: "should be unique" }, :presence => true
  validates_associated :feeds
end
