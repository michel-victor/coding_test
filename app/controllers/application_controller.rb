class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  before_action :authenticate_user!, unless: :devise_controller?

  # def after_sign_in_path_for(resource)
  #   request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  # end

  # def after_sign_out_path_for(resource)
  #   params[:url] || super
  # end

  rescue_from CanCan::AccessDenied do |exception|
    render file: "#{Rails.root}/public/422.html", status: 422, layout: false
  end
end
