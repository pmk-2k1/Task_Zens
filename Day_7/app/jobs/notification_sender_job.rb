class NotificationSenderJob < ApplicationJob
  queue_as :default

  def perform(item)
    # Do something later
    item.user_ids.each do |user_id|
      Notification.create(item: item, user_id: user_id)
    end
  end
end
