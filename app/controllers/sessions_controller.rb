class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to controller: 'application', action: 'hello'
  end
end

# def create
#   if !params[:name] || params[:name].empty?
#     redirect_to sessions_new_path
#   else
#     session[:name] = params[:name]
#     redirect_to application_hello_path
#   end
# end
