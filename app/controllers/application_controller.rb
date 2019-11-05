require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :sessions, true
    set :session_secret, :ENV['SESSION_SECRET']
  end
  helpers do

    def self.current_user(session)
      @user = User.find_by_id(session[:user_id])
    end

    def self.is_logged_in?(session)
      !!session[:user_id]
    end
  end

  get "/" do
    erb :welcome
  end


end
