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

    create "/patients" do
    end
end