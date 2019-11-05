class SessionsController < ApplicationController
  # GET: /sessions/signup
  get "/sessions/signup" do
    erb :"/signup.html"
  end

  #GET: /session/login
  get "/sessions/login" do
    erb :"/login.html"
  end

  # POST: /users/login
  post "/sessions/login" do
    @user = User.find_by_email(params[:email])
    if !@user.nil? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/users"
    else
      erb :"/users/error.html"
    end
  end

  post "/sessions/signup" do
    # binding.pry
    @user = User.find_by_email(params[:user][:email])
    if @user.nil? && params[:user][:password] == params[:password_confirmation]
      @user = User.create(params[:user])
    else
      erb :"/users/error.html"
    end
    redirect "/sessions/login"
  end
  # POST: /sessions
  post "/sessions" do
    redirect "/sessions"
  end

  # GET: /sessions/5
  get "/sessions/:id" do
    erb :"/sessions/show.html"
  end

  # GET: /sessions/5/edit
  get "/sessions/:id/edit" do
    erb :"/sessions/edit.html"
  end

  # PATCH: /sessions/5
  patch "/sessions/:id" do
    redirect "/sessions/:id"
  end

  # DELETE: /sessions/5/delete
  delete "/sessions/:id/delete" do
    redirect "/sessions"
  end
end
