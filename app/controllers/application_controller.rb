class ApplicationController < ActionController::Base
  include LoginSystem
  protect_from_forgery
  #session :session_key => '_railscoders_session_id'
  
  #before_filter :authenticate_user!, :except => [:show, :index]
end
