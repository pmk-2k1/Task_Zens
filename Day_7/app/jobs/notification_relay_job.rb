class NotificationRelayJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    # Do something later
    # html = ApplicationController.render partial: "notifications/#{notification.notifiable_type.underscore.pluralize}/#{notification.action}",
    #                                     locals: { notification: }, formats: [:html]
    # ActionCable.server.broadcast "notifications:#{notification.recipient_id}", html:
    # user = User.find(user_id)
    # UserMailer.welcome_email(user).deliver_later
    UserMailer.welcome_email(user).deliver
  end
end
