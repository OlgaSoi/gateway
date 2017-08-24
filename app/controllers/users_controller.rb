class UsersController < ApplicationController
    def index
      render :json=>MyApi::User.all()
    end

    def show
      render :json=>MyApi::User.where(id: params[:id]).all()
    end
end