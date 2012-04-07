class SessionsController < ApplicationController

  layout 'login'
  
  skip_before_filter :authorize
  
  def new
  end

  def create
	user = User.find_by_name( params[:name] )
	if user and user.authenticate( params[:password] )
		session[:user_id] = user.id
		redirect_to contents_url
	else
		redirect_to login_url, alert: "Wrong login or password"
	end
  end

  def destroy
	session[:user_id] = nil
	redirect_to users_url, notice: "Sesion ended"
  end
end
