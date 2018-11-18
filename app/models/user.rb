class User < ApplicationRecord
	has_secure_password

	validates :email, uniqueness: {case_sensitive: false}, presence: true
	validates :password, presence: true, confirmation: true
end
