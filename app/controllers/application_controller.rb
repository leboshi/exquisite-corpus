class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authorize

  protected
  def authorize
    @user = User.find_by(id: session[:user_id])
    unless @user
      redirect_to login_url, notice: 'Please log in'
    end
  end
end
