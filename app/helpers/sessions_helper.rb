module SessionsHelper
  def create_session(user)
    session[:user_id] = user.id
  end
  
  def destroy_session(user)
    session[:user_id] = nil
  end
  
  def current_user
    if @current_user
      return @current_user
    end
    User.find_by(id: session[:user_id])
  end
end
