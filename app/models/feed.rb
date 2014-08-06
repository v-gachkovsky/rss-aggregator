class Feed < ActiveRecord::Base
  belongs_to :group
  has_many :tizers

  validates :name, length: { in: 2..50 }
  validates_associated :tizers
end
