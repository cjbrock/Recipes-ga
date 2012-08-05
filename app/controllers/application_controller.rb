class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :login_required

  def login_required
    redirect_to login_path, :notice => "Please sign in" unless logged_in?
  end

  def logged_in?
    current_user ? true : false
    #!! current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user, :logged_in?

end