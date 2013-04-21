class OptionsController < ApplicationController

  def create
    # Find our parent model by id. With nested resources, the 'parent'
    # associations are always referenced by `model_id`.
    project = Project.find(params[:project_id])

    # Use the association to create the option. This is useful since we
    # don't want to allow people to directly access the project_id on a option.
    @option = project.options.build(params[:option])

    if @option.save
      redirect_to user_project_path(project.user, project)
    else
      render 'new'
    end
  end

   def destroy
    @option = Option.find(params[:id])
    if @option.project.user == current_user  
       @option = Option.find(params[:id])
       @option.destroy
       redirect_to project_path(@option.project)
    else
       raise "Someone other than the project owner tried to delete the project"
   end
end

end
