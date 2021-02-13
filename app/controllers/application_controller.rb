class ApplicationController < ActionController::Base

    def logged_in?
        !!current_user
      end
    
      def current_user
        @current_user ||= Owner.find_by(id: session[:user_id]) if session[:user_id]
      end
end
