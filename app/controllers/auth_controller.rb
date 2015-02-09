class AuthController < ApplicationController

  def index
    @login = params[:login]
    @password = params[:password]

    @useeer = Useeer.find_by_login_and_password(@login,@password)

    if(@useeer)
      session[:useeer_id] = @useeer.id
    end

    if(session[:useeer_id])
      redirect_to(:action => "secret_method")
    end
  end

  def logout
    unless session[:useeer_id]
      redirect_to(:action => "index")
    end

    session[:useeer_id]=nil
  end

  def secret_method
    if(session[:useeer_id])
      @useeer = Useeer.find(session[:useeer_id])
      @logged_as = @useeer.name
    else
      redirect_to(:action => "index")
    end
  end
end
