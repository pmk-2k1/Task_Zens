class UsersController < ApplicationController
  def show
    render json: {
      user: current_user.as_json(except: :jti)
    }, status: :ok
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:fullname, :email, :password, :admin, :reset_password_token, :current_password,
                                 :password_confirmation)
  end
end
