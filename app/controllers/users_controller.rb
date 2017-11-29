class UsersController < ApplicationController
  def show
    @user=User.find(current_user.id)
  end
  def update
    user=User.find(current_user.id)
    user.update(user_params)
    redirect_to user_path, id: current_user.id
  end

  private
  def user_params
    params.permit(:profile)
  end


end
