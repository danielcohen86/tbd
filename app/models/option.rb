class Option < ActiveRecord::Base
  attr_accessible :description, :photo_url

  validates :project, presence: true
  validates :image, presence: true

  has_many :votes
  belongs_to :project

  has_attached_file :image,
  	styles: {
  		small:'300x220#',
      thumb: '130x90#'
  	}
  attr_accessible :image
end
