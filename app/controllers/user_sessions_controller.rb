class UserSessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate params[:login], params[:password]

    if user
      session[:user_id] = user.id
      flash['notice'] = 'Logged in successfully!'
      redirect_back_or_default
    else
      flash['error'] = "Unable to log you in!"
      render :action => :new
    end
  end

  def destroy
    msg = logged_in? ? 'Logged out successfully!' : ''
    reset_session
    flash['notice'] = msg
    redirect_to root_path
  end

end