class UsersController < ApplicationController
    get "/signup" do
        erb :"users/new"
    end

    post "/signup" do
        #  check uniqueness of password before creating new user
        binding.pry
    end
end