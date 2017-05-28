class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

# require that someone be signed in before they can do anything else
  before_action :authenticate_user!


  # helper_method :current_user
  #   def current_user
  #     @current_user ||= User.find_by(id: session[:user])
  #   end

end
