class Tizer < ActiveRecord::Base
  belongs_to :feed

  validates :name, length: { in: 2..50 }
  
end
