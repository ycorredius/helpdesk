require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  post "/" do
    binding.pry 
    first = params[:name].split(" ")[0]
    last = params[:name].split(" ")[1]
    @user = User.create(first: first,last: last, email: params[:email],phone_number:params[:phone_number] )
  end
end
