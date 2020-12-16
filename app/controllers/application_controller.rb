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

  # helpers
  # logged_in?
  
  # Will use the following two in the patients controller: 
  # current_user
  # authorized_to_change?(id)
end
