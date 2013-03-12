class Option < ActiveRecord::Base
  belongs_to :project
  attr_accessible :description, :photo_url

  has_many :votes
end
