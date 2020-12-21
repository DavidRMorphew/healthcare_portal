require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security" # Figure out dot env gem again
  end

  get "/" do
    erb :welcome
  end

  helpers do
  
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if logged_in?
    end
  
    def redirect_if_not_logged_in
      redirect "/login" unless logged_in?
    end
  
    def patient_of_user?(patient)
      patient.user == current_user
    end 
  end
end
