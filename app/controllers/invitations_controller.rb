class InvitationsController < ApplicationController
  def show
        @invitation = Invitation.find(params[:id])
  end
end
