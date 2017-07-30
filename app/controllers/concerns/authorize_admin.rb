module AuthorizeAdmin
  private
  def authorize_admin
    unless User.find_by(id: session[:user_id])&.admin?
      redirect_back fallback_location: new_user_url, notice: 'Access restricted to administrators'
    end
  end
end