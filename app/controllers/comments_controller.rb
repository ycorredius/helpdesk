class CommentsController < ApplicationController

  # GET: /comments
  get "/comments" do
    erb :"/comments/index.html"
  end

  # GET: /comments/new
  get "/comments/new" do
    erb :"/comments/new.html"
  end

  # POST: /comments
  post "/comments" do
    redirect "/comments"
  end

  # GET: /comments/5
  get "/comments/:id" do
    erb :"/comments/show.html"
  end

  # GET: /comments/5/edit
  get "/comments/:id/edit" do
    erb :"/comments/edit.html"
  end

  # PATCH: /comments/5
  patch "/comments/:id" do
    redirect "/comments/:id"
  end

  # DELETE: /comments/5/delete
  delete "/comments/:id/delete" do
    redirect "/comments"
  end
end
