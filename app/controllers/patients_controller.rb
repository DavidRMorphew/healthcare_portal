class PatientsController < ApplicationController
    get "/patients" do
        if logged_in?
            erb :"patients/index"
        else
            redirect "/login"
        end
    end
end