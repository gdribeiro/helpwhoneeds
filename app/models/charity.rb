class Charity < User
  has_many :donations, as: :recipient
  validates :cnpj, presence: true
end
