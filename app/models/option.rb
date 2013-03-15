class Option < ActiveRecord::Base
  attr_accessible :description, :photo_url

  has_many :votes
  belongs_to :project
end
