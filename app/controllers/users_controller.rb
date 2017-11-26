class UsersController < ApplicationController
  def show
    @user=User.find(current_user.id)
  end
  def update
    redirect_to action: show
  end


end
