class User < ActiveRecord::Base
  has_secure_password
  has_many :tickets
  has_many :comments
end
