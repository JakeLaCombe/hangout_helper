class Person < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :first, :last, :zip
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true,
  					   confirmation: true,
  					   length: { within: 6..20 }
  validates :password_confirmation, presence: true

  belongs_to :group
  has_one :owned_group, class_name:"Group", foreign_key: "owner_id"
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

end
