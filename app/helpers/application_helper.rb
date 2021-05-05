module ApplicationHelper
    def current_user
        @current_user ||= User.find_by_id(session[:user_id])
    end

    def logged_in?
        current_user
    end

    def not_logged_in 
        if !logged_in?
            redirect_to login_path
        end
    end
end
