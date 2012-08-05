class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create
  
  include BCrypt

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

end
