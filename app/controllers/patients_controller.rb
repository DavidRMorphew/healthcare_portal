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
        new_patient = current_user.patients.build(params[:patient])
        if new_patient.save
            redirect "/patients"
        else
            binding.pry
            @errors = new_patient.errors.full_messages
            erb :"patients/new"
        end
    end
end