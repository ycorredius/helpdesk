class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    erb :"/users/index.html"
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end

  # POST: /users
  post "/users" do
    binding.pry
    @user = User.find_by_email(params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/users/:id'
    else
      redirect '/users'
    end
  end

  post "/users/new" do
    # binding.pry
    @user = User.find_by_email(params[:email])
    if @users
      binding.pry

      redirect "/users"
    elsif params[:password] == params[:password_confirmation]
      @user = User.create(email:params[:email], password: params[:password])
      redirect "/users"
    else
      redirect "/users/new"
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

end
