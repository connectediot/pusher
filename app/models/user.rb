class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # 채팅이랑 1:N
  has_many :chats
  # 채팅방이랑 M:N
  has_many :admissions
  has_many :chat_rooms, through: :admissions
end
