module  CurrentUserConcern
    extend ActiveSupport::Concern

    included do
        before_action :set_current_user
    end

    def set_current_user
        if session[:user_id]
            puts "set current user z sesji concernu dane"
            @current_user= User.find(session[:user_id])
        else  
            render json: {
            sessioncon: "zepsulo sie"
        }
        end
    end
end