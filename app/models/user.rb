class User < ApplicationRecord
  has_many :images
  has_secure_password
	validates 	:password, presence: { message:'Password is missing' }, length: { minimum: 6, message: 'Your password must be at least 6 char long'}, allow_nil: true
	validates_confirmation_of :password
end
