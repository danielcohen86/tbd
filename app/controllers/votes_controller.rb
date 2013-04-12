class VotesController < ApplicationController
 
  def create
    option = Option.find(params[:option_id])
    @vote = option.votes.build

    if params[:vote] == 'up'
      @vote.updown = 1
    else
      @vote.updown = -1
    end

    if @vote.save
      redirect_to project_path(params[:project_id])
    else
      render 'new'
    end
  end

end