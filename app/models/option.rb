class Option < ActiveRecord::Base
  attr_accessible :description, :photo_url

  validates :project, presence: true

  has_many :votes
  belongs_to :project
end
