class VlogsController < ApplicationController

  
  get "/vlogs" do
    @vlogs = Vlog.all
    erb :"/vlogs/index"
  end

  
  get "/vlogs/new" do
    redirect_if_not_logged_in
    @name = Name.all
    erb :"/vlogs/new"
  end
  
  post "/vlogs" do
    redirect_if_not_logged_in
    @vlog = Vlog.new(params)

    @vlog.user_id = session[:user_id]
    @vlog.save

    redirect :"/vlogs"
  end

  
  get "/vlogs/:id" do
    @vlog = Vlog.find(params[:id])
    erb :"/vlogs/show"
  end


  get "/vlogs/:id/edit" do
    erb :"/vlogs/edit"
  end

  
  patch "/vlogs/:id" do
    redirect_if_not_logged_in

  @vlog = Vlog.find(params[:id])
  redirect_if_not_logged_in
  @vlog.update(params["vlog"])
  redirect "/vloggers/#{@vlog.id}"
end


delete "/vlog/:id/delete" do
  @vlog = Vlog.find(params[:id])
  @vlog.destroy
  redirect "/vlogs"
end

end