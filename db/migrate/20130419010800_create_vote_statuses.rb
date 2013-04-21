class CreateVoteStatuses < ActiveRecord::Migration
  def change
    create_table :vote_statuses do |t|
      t.boolean :done
      t.references :user
      t.references :project

      t.timestamps
    end
    add_index :vote_statuses, :user_id
    add_index :vote_statuses, :project_id
  end
end
