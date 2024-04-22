class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :todos, dependent: :destroy

  validates :full_name, presence: true
  validates :email, presence: true, uniqueness: true, length: { miximum: 5, maximum: 255 },
                    format: { with: /\A[\w+_.]+@[a-z\d]+\.[a-z]+\z/i }
  validates :admin, inclusion: [true, false]
end
