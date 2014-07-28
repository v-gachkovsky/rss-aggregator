class Feed < ActiveRecord::Base
  belongs_to :group
  has_many :tizers
end
