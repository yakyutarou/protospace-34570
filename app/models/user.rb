class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, password_length: 6..128
  has_many :prototypes
  has_many :comments, dependent: :destroy

  validates  :name, presence: true
  validates  :profile, presence: true
  validates  :occupation, presence: true
  validates  :position, presence: true
end
