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
    @user = User.find_by_id(session[:user_id])
    # if @user.tickets.find_by_id(para)
    if !params[:content].empty? && !params[:short_description].empty?
      @user.tickets.create(short_description: params[:short_description], content: params[:content])
    else
      redirect "/tickets/new"
    end
    redirect "/users"
  end

  # GET: /tickets/5
  get "/tickets/:id" do
    @ticket = Ticket.find_by_id(params[:id])
    erb :"/tickets/show.html"
  end

  # GET: /tickets/5/edit
  get "/tickets/:id/edit" do
    @ticket = Ticket.find_by_id(params[:id])
    erb :"/tickets/edit.html"
  end

  # PATCH: /tickets/5
  patch "/tickets/:id" do
    binding.pry
    redirect "/users"
  end
  
  post "/tickets/:id/comments" do
    @ticket =  Ticket.find_by_id(params[:id])
    if !params[:statement].empty? && @ticket
      @comment = current_user.comments.create(statement: params[:statement])
      @ticket.comments << @comment
    end
    @ticket
    binding.pry
    redirect "/tickets/#{@ticket.id}"
  end

  # DELETE: /tickets/5/delete
  delete "/tickets/:id/delete" do
    redirect "/tickets"
  end
end
