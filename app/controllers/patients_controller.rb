class PatientsController < ApplicationController
    
    get "/patients" do
        if logged_in?
            @patients = Patient.all
            erb :"patients/index"
        else
            redirect "/login"
        end
    end

    get "/patients/new"
        if logged_in?
            erb :"patients/new"
        else
            redirect "/login"
        end
    end
end