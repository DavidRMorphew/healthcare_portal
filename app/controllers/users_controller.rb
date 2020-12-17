class UsersController < ApplicationController
    get "/signup" do
        erb :"users/new"
    end

    post "/signup" do
        user = User.new(params[:users])
        if user.save
            session[:user_id] = user.id
            redirect "/patients"
        else
            @errors = user.errors.full_messages
            erb :"users/new"
        end
    end
end