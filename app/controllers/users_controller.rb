class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    erb :"/users/index.html"
  end

  # GET: /users/signup
  get "/users/signup" do
    erb :"/users/new.html"
  end

  # POST: /users/login
  post "/users/login" do
    @user = User.find_by_email(params[:email])
    if !@user.nil? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/users/:id"
    else
      erb :"/users/error.html"
    end
  end

#POST: /users/create new
  post "/users/signup" do
    # binding.pry
    @user = User.find_by_email(params[:user][:email])
    if @user.nil? && params[:user][:password] == params[:password_confirmation]
      @user = User.create(params[:user])
      session[:user_id] = @user.id
      redirect "/user/login"
    else
      erb :"/users/error.html"
    end
  end

  # GET: /users/5
  get "/users/:id" do
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end

  get "/users/error" do

  end
end
