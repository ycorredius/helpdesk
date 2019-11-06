class TicketsController < ApplicationController

  # GET: /tickets
  get "/tickets" do
    @tickets = Ticket.all
    erb :"/tickets/index.html"
  end

  # GET: /tickets/new
  get "/tickets/new" do
    erb :"/tickets/new.html"
  end

  # POST: /tickets
  post "/tickets" do
    binding.pry
    @user = User.find_by_id(session[:user_id])
    if !params[:content].empty? && !params[:short_description].empty?
      @user.tickets.create(short_description: params[:short_description], content: params[:content])
    else
      redirect "/tickets/new"
    end
    redirect "/tickets"
  end

  # GET: /tickets/5
  get "/tickets/:id" do
    @ticket = Ticket.find_by_id(params[:id])
    erb :"/tickets/show.html"
  end

  # GET: /tickets/5/edit
  get "/tickets/:id/edit" do
    erb :"/tickets/edit.html"
  end

  # PATCH: /tickets/5
  patch "/tickets/:id" do
    redirect "/tickets/:id"
  end

  # DELETE: /tickets/5/delete
  delete "/tickets/:id/delete" do
    redirect "/tickets"
  end
end
