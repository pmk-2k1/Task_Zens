class UsersController < ApplicationController
  def index
    @user = User.all
    render json: @user
  end
  def show
    render json: {
      user: current_user.as_json(except: :jti)
    }, status: :ok
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: {
        user: current_user.as_json(except: :jti)
      }, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
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
