# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :send_welcome_todo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :todos, dependent: :destroy

  validates :full_name, presence: true
  validates :email, presence: true, uniqueness: true, length: { miximum: 5, maximum: 255 },
                    format: { with: /\A[\w+_.]+@[a-z\d]+\.[a-z]+\z/i }
  validates :admin, inclusion: [true, false]

  has_many :notifications, as: :recipient

  private

  # def send_welcome_todo
  #   NotificationRelayJob.perform_now(self)
  # end
  def unviewed_notifications_count
    Notification.for_user(self.id)
  end
end
