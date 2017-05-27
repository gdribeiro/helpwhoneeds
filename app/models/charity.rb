class Charity < User
  validates :cnpj, presence: true
end
