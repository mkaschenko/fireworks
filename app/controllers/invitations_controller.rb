class InvitationsController < ApplicationController
  verify :only => :create, :params => :ids, :redirect_to => :new_invitation_path

  def index
    @invitations = current_user.invitations.latest
  end

  def new
    recipients = current_user.invitations.recipients
    @invited_users = recipients.join(',')
  end

  def create
    recipients = params[:ids]
    recipients.each { |recipient_id| current_user.invitations.create(:recipient => recipient_id) }
    redirect_to invitations_path
  end
end
