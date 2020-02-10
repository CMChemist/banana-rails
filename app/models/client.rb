class Client < ApplicationRecord
	has_secure_password

	has_many :claims

	validates :email, uniqueness: { case_sensitive: false }
	validates :password, presence: true
	validates :address_street, presence: false
	validates :address_city, presence: false
	validates :address_state, presence: false
	validates :address_zip, presence: true
	validates :account_status, presence: true
	validates :ethnicity, presence: false
	validates :gender, presence: false
end
