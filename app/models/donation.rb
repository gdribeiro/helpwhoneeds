class Donation < ApplicationRecord
	belongs_to :user
	validates :user, presence: true
	
	def self.search(search)
	  where("description LIKE ?", "%#{search}%") 
	end
end
