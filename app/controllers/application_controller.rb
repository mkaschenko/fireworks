class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  attr_reader :current_user
  helper_attr :current_user, :fb_app_url

  before_filter :ensure_authenticated_to_facebook, :after_facebook_login, :set_current_user

  def after_facebook_login
    if params[:next]
      url = params[:next].gsub('http://fireworks.no-ip.org:3000/', fb_app_url)
      top_redirect_to url
    end
  end

  protected

  def fb_app_url(relative_path = "")
    apps_url = 'http://apps.facebook.com'
    canvas_page_name = 'sn_fireworks'
    File.join(apps_url, canvas_page_name, relative_path)
  end

  private

  def set_current_user
    @current_user = User.find_or_create_by_facebook_id(facebook_session.user.uid)
  end
end
