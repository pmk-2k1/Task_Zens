# frozen_string_literal: true

class Todo < ApplicationRecord
  include Notificable

  belongs_to :user

  validates :title, presence: true
  validates :note, presence: true
  validates :time_start, presence: true
  validates :time_complete, presence: true
  validates_comparison_of :time_complete, greater_than: :time_start, other_than: Date.today
  validates :is_complete, inclusion: [true, false]
  scope :is_complete, -> { where(is_private: false) }

  def user_ids
    User.all.ids # send the notification to that users
  end
end
