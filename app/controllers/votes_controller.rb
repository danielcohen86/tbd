class VotesController < ApplicationController
 
  def create
    # Find our parent model by id. With nested resources, the 'parent'
    # associations are always referenced by `model_id`.
    option = Option.find(params[:option_id])

    # Use the association to create the option. This is useful since we
    # don't want to allow people to directly access the option_id on a vote.
    @vote = options.votes.build(params[:vote])

    if @vote.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

end