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

