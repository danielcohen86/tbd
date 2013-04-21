class VoteStatusesController < ApplicationController
  def create
  	VoteStatus.create user_id: current_user.id, project_id: params[:project_id], done: true
  	redirect_to project_path params[:project_id]
  end
end
