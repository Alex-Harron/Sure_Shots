class UsersController < ApplicationController
    layout "main"

    def new 
        if !logged_in?
            @user = User.new
        else
            redirect_to user_path(current_user)
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id 
            redirect_to root_path
        else
            @errors = @user.errors.full_messages
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    def index
        @users = User.all 
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
