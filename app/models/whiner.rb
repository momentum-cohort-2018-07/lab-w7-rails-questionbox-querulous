class Whiner < ApplicationRecord
  has_secure_token :auth_token
  has_secure_password
  before_save :downcase_username

  def downcase_username
      self.username.downcase!
  end
end
