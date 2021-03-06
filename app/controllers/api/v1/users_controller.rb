class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all

    respond_to do |format|
      format.xml { render xml: @users }
      format.json { render json: @users }
    end

  end

  def show
    render json: @user
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

end
