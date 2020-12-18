class SessionsController < ApplicationController
    get "/login" do
        if logged_in?
            redirect "/patients"
        end
        erb :"sessions/login"
    end

    post "/login" do
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect "/patients"
        else
            @error = "The Username or Password that was entered is incorrect."
            erb :"sessions/login"
        end
    end

    post "/logout" do
        session.clear
    end
end