class User < ActiveRecord::Base
  has_secure_password
  has_many :lists
  validates_presence_of :name, :password_digest
  validates_uniqueness_of :name
end
 #change table column from name to username