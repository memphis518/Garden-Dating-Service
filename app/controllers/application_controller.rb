class ApplicationController < ActionController::Base
  include Authentication::Controller

  helper :all
  protect_from_forgery

end
