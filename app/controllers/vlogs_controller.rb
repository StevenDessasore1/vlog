class VlogsController < ApplicationController

  # GET: /vlogs
  get "/vlogs" do
    erb :"/vlogs/index.html"
  end

  # GET: /vlogs/new
  get "/vlogs/new" do
    erb :"/vlogs/new.html"
  end

  # POST: /vlogs
  post "/vlogs" do
    redirect "/vlogs"
  end

  # GET: /vlogs/5
  get "/vlogs/:id" do
    erb :"/vlogs/show.html"
  end

  # GET: /vlogs/5/edit
  get "/vlogs/:id/edit" do
    erb :"/vlogs/edit.html"
  end

  # PATCH: /vlogs/5
  patch "/vlogs/:id" do
    redirect "/vlogs/:id"
  end

  # DELETE: /vlogs/5/delete
  delete "/vlogs/:id/delete" do
    redirect "/vlogs"
  end
end
