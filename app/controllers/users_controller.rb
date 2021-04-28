class UsersController < ApplicationController
    layout "application"
    def new 
        if !logged_in?
            @user = User.new
        else
            redirect_to root_path
        end
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id 
            redirect_to root_path
        else
            redirect_to signup_path
        end
    end

    def index
        @users = User.all 
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
