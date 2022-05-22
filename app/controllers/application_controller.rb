class ApplicationController < ActionController::Base 
   include ActionController::Cookies
   skip_before_action :verify_authenticity_token

   before_action :set_csrf_cookie
  
    include ActionController::RequestForgeryProtection
  
    protect_from_forgery with: :exception 
		
    def cookie 
        "ok"
    end
		
    private 
		
    def set_csrf_cookie
       cookies["CSRF-TOKEN"] = {
            value: form_authenticity_token,
            domain: :all 
        }
    end
end
