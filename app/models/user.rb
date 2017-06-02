class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :donations
  attr_accessor :wants_to_be_charity

  validates :name, presence: true
  validates :cnpj, presence: true, if: "cpf.blank?"
  validates :cpf, presence: true, if: "cnpj.blank?"


  before_save :check_if_wants_to_be_charity

  private

  def check_if_wants_to_be_charity
    if wants_to_be_charity == 'true'
      self.type = 'Charity'
    end
  end
end
