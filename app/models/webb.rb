class Webb < ApplicationRecord
	validates :email, presence: true
	validates :message, presence: true
	validates :subject, presence: true
end
