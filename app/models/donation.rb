class Donation < ApplicationRecord
	belongs_to :user
	belongs_to :recipient, polymorphic: true

	validates :user, :recipient, presence: true

	def self.search(search)
	  where("description LIKE ?", "%#{search}%")
	end

	def self.get_recipient_name
	  if recipient_type == "Charity"
	    Charity.find(recipient_id).name
	  elsif recipient_type == "Project"
	    Project.find(recipient_id).name
	  end
	end
end
