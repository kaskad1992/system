class UseeerSessionsController < ApplicationController

  def new
    @useeer_session = UseeerSession.new
  end

  def create
    @useeer_session = UseeerSession.new(params[:useeer_session])
    if @useeer_session.save
      flash[:notice] = "Successfully logged in. Yeah! ;)"
      after_sign_in_path_for(Useeer)
      #redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def destroy
    @useeer_session = UseeerSession.find
    @useeer_session.destroy
    flash[:notice] = "Successfully logged out. Bye :("
    redirect_to root_url
  end

end
