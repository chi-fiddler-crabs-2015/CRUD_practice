require 'bcrypt'

class User < ActiveRecord::Base
  has_many  :purchases, foreign_key: :purchaser_id
  has_many  :shirts, foreign_key: :designer_id

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password_as_param)
    puts 'reached auth'
    BCrypt::Password.new(self.password_hash) == password_as_param
  end

end
