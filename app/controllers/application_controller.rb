class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.is_a?(User) && resource.team.present?
      team_posts_url(resource.team)
    elsif resource.is_a?(AdminUser)
      # TODO: add a root from admin
      admin_root_url
    else
      teams_url
    end
  end
end
