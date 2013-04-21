class VoteStatus < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  attr_accessible :done, :user_id, :project_id
end
