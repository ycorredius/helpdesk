require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :session_secret, ENV['SESSION_SECRET']
  end
  helpers do
    def is_logged_in?
      current_user ||= User.find_by_id(session[:user_id])
    end

    def current_user
      !!is_logged_in?
    end

    def redirect_if_not_logged_in
      !current_user
      redirect "/users/signup"
    end
  end

  get "/" do
    erb :welcome
  end

end
