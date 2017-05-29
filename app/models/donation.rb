class Donation < ApplicationRecord
	belongs_to :recipient, polymorphic: true
	validates :recipient, presence: true
end
