class User < ActiveRecord::Base
  has_secure_password
  def set_up?
    self.set_up
  end
end
