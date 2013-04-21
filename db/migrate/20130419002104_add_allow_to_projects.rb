class AddAllowToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :allow, :boolean
  end
end
