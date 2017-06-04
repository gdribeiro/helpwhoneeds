class Project < ApplicationRecord
	belongs_to :user
	has_many :donations, as: :recipient
	validates :user_id, presence: true
end
