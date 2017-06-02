class Charity < User
	validates :cnpj, presence: true

	has_many :donations, as: :recipient

	def self.search(term)
	  where("description LIKE %?%", term)
	end
end
