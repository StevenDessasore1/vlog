# frozen_string_literal: true

require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'jfkslsjwmjcjfeo'
  end

  get '/' do
    erb :welcome
  end

  helpers do
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
      !!current_user
    end
  end

  private

  def redirect_if_not_logged_in
    if !logged_in?
    redirect to '/login'
  end
  end
end
