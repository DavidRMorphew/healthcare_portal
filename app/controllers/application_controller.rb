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
      User.find_by(id: session[:user_id]) # Test the difference between find and find_by for id and which is better for this
    end
  
  # Will use the following two in the patients controller: 
  # current_user
  # authorized_to_change?(id)
  end
end
