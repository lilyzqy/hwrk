class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates :password_digest, presence:{message:"password can't be blank"},
             length:{minimum: 6, allow_nil: true}

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
end
