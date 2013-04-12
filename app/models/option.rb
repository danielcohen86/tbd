class Option < ActiveRecord::Base
  attr_accessible :description, :photo_url

  validates :project, presence: true
  validates :image, presence: true

  has_many :votes
  belongs_to :project

  has_attached_file :image
  attr_accessible :image
end
