class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Add in modules to handle custom actions
  # include Exceptions
  # include QueryExecutor

  # Rescue from unexecuted query
  rescue_from Exceptions::QueryNotExecuted do |exception|
    flash[:error] = "The attempted query could not be executed."
    redirect_to root_url
  end

end
