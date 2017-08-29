class UsersController < ApplicationController
    def login
      p "UsersController#login params: #{params}"
      if params.has_key?(:user)
        email=params[:user][:email]
        password=params[:user][:password]
        user=User.where(:email=>email, :password=>password).all().first()
      else
        render :json=>{'error':true,'message'=>'Incorrect email or password'}
      end
      if user
        render :json=>{'error':false,'email':email,'api_key'=>user['api_key']}
      else
        render :json=>{'error':true,'message'=>'Login information is required'}
      end
    end 
end