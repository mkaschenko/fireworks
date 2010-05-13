class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  attr_reader :current_user
  helper_attr :current_user, :fb_url

  ensure_authenticated_to_facebook
  # ensure_application_is_installed_by_facebook_user

  before_filter :set_current_user

  protected

  def fb_url(relative_path = "")
    apps_url = 'http://apps.facebook.com'
    canvas_page_name = 'sn_fireworks'
    File.join(apps_url, canvas_page_name, relative_path)
  end

  private

  def set_current_user
    @current_user = User.find_or_create_by_facebook_id(facebook_session.user.uid)
  end
end
