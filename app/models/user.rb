class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :groups

  validates :email, length: { in: 2..100 }, uniqueness: true, :format => { with: /.+@.+\..+/i }, :presence => true
  validates :encrypted_password, length: { in: 8..100 }, :presence => true
  validates_associated :groups
end
