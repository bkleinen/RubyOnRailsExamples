module SessionsHelper
  def sign_in(user)
    session[:current_user] = user
    self.current_user = user
  end
  def signed_in?
    !current_user.nil?
  end
  def sign_out
    self.current_user = nil
    session[:current_user] = nil
  end
  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= session[:current_user]   
  end
  def current_user?(user)
    user == current_user
  end
  def signed_in_user
    unless signed_in?
      redirect_to signin_path, notice: "Please sign in." 
    end
  end
end
