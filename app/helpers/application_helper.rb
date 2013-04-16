module ApplicationHelper

  def q
   @q = Project.search(params[:q])
  end

end
