class UsuariosController < ApplicationController

  before_action :set_user

  def show
  end

  def update
  end
end

private
def set_user
  @user = User.find(params[:id])
end
def user_params
			params.require(:user).permit(:email,:username,:name,:last_name,:blood_type,:cover)
		end
