class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
  end

  def page
    @user=User.find(params[:id])

    if current_user.present?
      if @user.id==current_user.id
        redirect_to user_path, id: current_user.id
      end
    end
  end
  def update
    user=User.find(current_user.id)
    user.update(user_params)
    redirect_to user_path, id: current_user.id
  end

  def profile_update
    user=User.find(current_user.id)
    user.update(profile_params)
    userid=current_user.id
    redirect_to "/users/#{current_user.id}"
  end

  def logout
  end

  private
  def user_params
    params.require(:user).permit(:avatar, :email, :nickname, :address)
  end

  def profile_params
    params.permit(:profile)
  end


end
