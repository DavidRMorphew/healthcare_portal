class PatientsController < ApplicationController
    
    get "/patients" do
        if logged_in?
            @patients = Patient.all
            erb :"patients/index"
        else
            redirect "/login"
        end
    end

    get "/patients/new" do
        if logged_in?
            erb :"patients/new"
        else
            redirect "/login"
        end
    end

    post "/patients" do
        binding.pry
        if current_user.patients.create(params[:patient])
            redirect "/patients"
        else
        end
    end
end