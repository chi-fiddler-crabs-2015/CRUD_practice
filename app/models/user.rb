require 'bcrypt'

class User < ActiveRecord::Base
  has_many  :purchases, foreign_key: :purchaser_id
  has_many  :shirts, foreign_key: :designer_id

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(password_as_param)
    self.password_hash = BCrypt::Password.create(password_as_param)
  end

  def authenticate(password_as_param)
    BCrypt::Password.new(self.password_hash) == password_as_param
  end

end
