class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :estimations, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, uniqueness: true
  validates :phone_number, :presence => {:message => 'Numéro de téléphone invalide'},
  :numericality => true,
  :length => { :minimum => 10, :maximum => 15 }

end
