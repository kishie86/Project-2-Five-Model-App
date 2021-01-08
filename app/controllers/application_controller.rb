class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user
        User.find_by(id: session[:id])
    #   if session[:user_id]
    #     @current_user ||= User.find(session[:user_id])
    #   else
    #     @current_user = nil
    #   end
    end

    def logged_in?
        !!current_user
    end

    def not_logged_in
        redirect_to login_path unless logged_in?
    end
end
