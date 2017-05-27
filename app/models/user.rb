class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :cnpj, presence: true, if: "cpf.blank?"
  validates :cpf, presence: true, if: "cnpj.blank?"
end
