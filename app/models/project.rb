class Project < ActiveRecord::Base
  attr_accessible :description, :title, :allow

  validates :user, presence: true

  has_many :options
  has_many :vote_statuses
  belongs_to :user

  def voting_closed?(user)
  	user.vote_statuses.where(project_id: id, done: true).present?
  end
end
