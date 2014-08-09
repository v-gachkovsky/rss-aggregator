class Group < ActiveRecord::Base

  belongs_to :user
  has_many :feeds

  accepts_nested_attributes_for :feeds, allow_destroy: true

  validates :name, length: { in: 2..100 }, uniqueness: { scope: :user, message: "should be unique" }, :presence => true
  validates_associated :feeds
end
