class UsersController < ApplicationController

  
  get '/signup' do 
    erb :'users/signup'
end


  post "/signup" do

    user = User.new(params)
    if !user.save 
      redirect to "/signup"
    else 
      user.save
      session[:user_id] = user.id
      redirect to "/vloggers"
  end

end

 
  get '/login' do
    erb :'users/login'
  end

  
  post '/login' do
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to '/vloggers'

    end
    redirect to '/login'

  end

  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  
  patch "/users/:id" do
    redirect "/users/:id"
  end

 
  delete "/users/:id/delete" do
    redirect "/users"
  end

end
