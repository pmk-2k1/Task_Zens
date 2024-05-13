class PasswordMailer < ApplicationMailer
  def reset
    @token = params[:user].signed_id(purpose: 'password_reset', expires_in: 30.minutes)

    mail(to: params[:user].email, subject: 'Reset Password')
  end
end
