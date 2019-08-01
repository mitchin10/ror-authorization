class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  after_action :verify_authorized,  unless: :devise_controller?
end
