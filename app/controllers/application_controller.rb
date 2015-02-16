class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#=begin

  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = exception.message
    redirect_to root_url
  end

  helper_method :current_useeer, :current_useeer_session
  
  layout 'application'

  def after_sign_in_path_for(resource)
#    if current_useeer.role?("admin")
#      redirect_to '/admin/committees'
#    elsif current_useeer.role?("coordinator1")
#      redirect_to '/constituencies/1'
#    elsif current_useeer.role?("coordinator2")
#      redirect_to '/constituencies/2'
#    elsif current_useeer.role?("coordinator3")
#      redirect_to '/constituencies/3'
#    else
#      redirect_to root_path
#    end
    case current_useeer.role
    when 'admin'
      redirect_to '/menus/'
    when 'coordinator1'
      redirect_to '/constituencies/1'
    when 'coordinator2'
      redirect_to '/constituencies/2'
    when 'coordinator3'
      redirect_to '/constituencies/3'
    else
      redirect_to '/login'
    end
 
  end

  private
  def current_useeer_session
    return @current_useeer_session if defined?(@current_useeer_session)
    @current_useeer_session = UseeerSession.find
  end

  def current_useeer
    return @current_useeer if defined?(@current_useeer)
    @current_useeer = current_useeer_session && current_useeer_session.record
  end

  def authenticate
    if !current_useeer
      redirect_to new_useeer_session_path
    end
  end

#=end

end
