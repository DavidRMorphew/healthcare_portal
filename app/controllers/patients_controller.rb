class PatientsController < ApplicationController
    
    get "/patients" do
        redirect_if_not_logged_in
        @patients = Patient.all
        erb :"patients/index"
    end

    get "/patients/new" do
        redirect_if_not_logged_in
        erb :"patients/new"
    end

    post "/patients" do
        new_patient = current_user.patients.build(params[:patient])
        if new_patient.save
            redirect "/patients"
        else
            @errors = new_patient.errors.full_messages
            erb :"patients/new"
        end
    end

    get "/patients/:id" do
        @patient = Patient.find_by(id: params[:id])
        if @patient && patient_of_user?(@patient)
            erb :"patients/show"
        else
            redirect "/patients"
        end
    end

    delete "/patients/:id" do
        patient = Patient.find_by(id: params[:id])
        if patient && patient_of_user?(patient)
            patient.destroy
        end
        redirect "/patients"
    end

    get "/patients/:id/edit" do
        @patient = Patient.find_by(id: params[:id])
        if @patient && patient_of_user?(@patient)
            erb :"patients/edit"
        else
            redirect "/patients"
        end
    end

    patch "/patients/:id" do
        @patient = Patient.find_by(id: params[:id])
        if @patient && patient_of_user?(@patient)
            if params[:patient][:name].empty? || params[:patient][:birthdate].nil?
                @error = "Error: Name and Birthdate are required fields"
                erb :"patients/edit"
            else
                @patient.update(params[:patient])
                redirect "/patients/#{@patient.id}"            
            end
        else 
            redirect "/patients"
        end
    end
end