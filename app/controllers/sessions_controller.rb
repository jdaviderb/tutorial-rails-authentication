class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(username: params[:login][:username]) 
  	if user and user.authenticate(params[:login][:password]) 
  		session[:login] = true
  		redirect_to(new_session_path) and return
  	else
  		flash[:notice] = "usuario o contraseña incorrecta"
  		redirect_to(new_session_path) and return
  	end
  end

  def salir

  	if session[:login]
  		session.delete(:login)
  		flash[:notice] = "te has deslogueado del sistema"
  		redirect_to(new_session_path) and return
  	end

  end
end
