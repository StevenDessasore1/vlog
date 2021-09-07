# frozen_string_literal: true

class UsersController < ApplicationController
  
  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    user = User.new(params)
    if !user.save
      redirect to '/signup'
    else
      user.save
      session[:user_id] = user.id
      redirect to '/vlogs'
    end
  end

  get '/login' do
    erb :'/users/login'
  end

  post '/login' do
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to '/vlogs'

    end
    redirect to '/login'
  end

  post '/logout' do
    session.clear
    redirect to '/vlogs'
  end
  
  
end
