class SessionsController < ApplicationController
    get "/login" do
        erb :"sessions/login"
    end

    post "/login" do
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect "/patients"
        else
            # binding.pry
            @error = "The Username or Password that was entered is incorrect."
            erb :"sessions/login"
        end
    end
end