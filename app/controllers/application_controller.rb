class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :require_logged_in

  def hello
    redirect_to '/login' unless session[:name]
  end

  def current_user
    session[:name]
  end

  def require_logged_in
    redirect_to '/login' unless current_user
  end
end
