class SessionsController < ApplicationController
    layout "application"

    def home
        if !logged_in?
            redirect_to login_path
        end
    end

    def new 
        if logged_in?
            redirect_to root_path
        end
    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect_to root_path
        else
            @errors = ["The Username or Password is Incorrect."]
            render :new
        end
    end

    def destroy 
        session.delete :user_id
        redirect_to login_path
    end

    def omniauth 
        user = User.find_or_create_by(uid: requiest.env['omniauth.auth'][:uid], provider:requiest.env['omniauth.auth'][:provider]) do |u|
            u.username = requiest.env['omniauth.auth'][:info][:first_name]
            u.email = requiest.env['omniauth.auth'][:info][:email]
            u.photo = requiest.env['omniauth.auth'][:info][:image]
            u.password = SecureRandom.hex(20)
        end
    end
end
