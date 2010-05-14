module InvitationsHelper
  def fb_user_url(recipient)
    "http://www.facebook.com/profile.php?id=" + recipient.to_s
  end
end
