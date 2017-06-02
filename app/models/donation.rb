class Donation < ApplicationRecord
	belongs_to :user
	belongs_to :recipient, polymorphic: true

	validates :user, :recipient, presence: true

	def self.search(search)
	  where("description LIKE ?", "%#{search}%")
	end
end
