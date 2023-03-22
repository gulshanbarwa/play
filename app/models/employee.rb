class Employee < ApplicationRecord
	validates :name, :contact, presence: true
	validates :address, presence: true, uniqueness: true
end
