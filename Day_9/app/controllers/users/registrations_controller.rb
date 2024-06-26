# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _options = {})
    if resource.persisted?
      render json: {
        status: { code: 200, message: 'Signed up successfully',
                  data: {
                    email: current_user.email,
                    fullname: current_user.fullname
                  } }
      }, status: :ok
    else
      render json: {
        status: { message: 'User could not be created successfully',
                  errors: resource.errors.full_messages }
      }, status: :unprocessable_entity
    end
  end
end
