class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :donations

  attr_accessor :wants_to_be_charity

  validates :name, presence: true
  validates :cpf, presence: true, if: 'type != "Charity"'
  validates :cnpj, presence: true, if: 'type == "Charity"'

  before_validation :check_if_wants_to_be_charity

  private

  def check_if_wants_to_be_charity
    if wants_to_be_charity == 'true'
      self.becomes!(Charity)
    end
  end
end
