class SessionsController < ApplicationController
    layout "main"
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
        session.clear
        redirect_to login_path
    end


    def omniauth 
         user = User.find_or_create_by(uid: request.env['omniauth.auth'][:uid], provider: request.env['omniauth.auth'][:provider])
     user.username = request.env['omniauth.auth'][:info][:first_name]
     user.email = request.env['omniauth.auth'][:info][:email]
      user.password = SecureRandom.hex(15)
   if user.save
       session[:user_id] = user.id
       redirect_to root_path
     else
       redirect_to login_path 
     end 
   end 
end
