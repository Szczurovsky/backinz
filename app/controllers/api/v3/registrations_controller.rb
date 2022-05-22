class Api::V3::RegistrationsController < ApplicationController
    def create
        user = User.create!(
            email: params["user"]["email"],
            password: params["user"]["password"],
            password_confirmation: params["user"]["password_confirmation"],
        )
        if user
            puts "dziala!!! user szukany"
            session[:user_id] = user.id
            render json:{
                rejestration: "rejestracja udana",
                status: :created,
                user: user
            }
        else
            render json: {status: 500}
        end
    end
    
end
