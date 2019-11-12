class AgentsController < ApplicationController

  # GET: /agents
  get "/agents" do
    erb :"/agents/index.html"
  end

  # GET: /agents/new
  get "/agents/new" do
    erb :"/agents/new.html"
  end

  # POST: /agents
  post "/agents" do
    @agent = Agent.find_by_email(params[:user][:email])
    if @Agent.nil? && params[:agent][:password] == params[:password_confirmation]
      @agent = Agent.create(params[:agent])
    else
      erb :"/users/error.html"
    end
    @agent.id
    redirect "/agents/:id"
  end

  # GET: /agents/5
  get "/agents/:id" do
    erb :"/agents/show.html"
  end

  # GET: /agents/5/edit
  get "/agents/:id/edit" do
    erb :"/agents/edit.html"
  end

  # PATCH: /agents/5
  patch "/agents/:id" do
    redirect "/agents/:id"
  end

  # DELETE: /agents/5/delete
  delete "/agents/:id/delete" do
    redirect "/agents"
  end
end
