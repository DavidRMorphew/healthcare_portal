class PatientsController < ApplicationController
    get "/patients" do
        if logged_in?
            @patients = Patient.all
            erb :"patients/index"
        else
            redirect "/login"
        end
    end
end