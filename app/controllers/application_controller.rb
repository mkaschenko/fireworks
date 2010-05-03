class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  ensure_authenticated_to_facebook

  attr_reader :current_user
  helper_attr :current_user

  before_filter :set_current_user

  private

  def set_current_user
    @current_user = User.find_or_create_by_facebook_id(facebook_session.user.uid)
  end
end
