class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:username]

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  has_one_attached :logo

  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  has_many :messages

  enum rol: { client: 0, admin: 1 }, _default: "client"
end
