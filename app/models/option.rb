class Option < ActiveRecord::Base
  attr_accessible :description, :photo_url

  validates :project, presence: true
  validates :image, presence: true

  has_many :votes
  belongs_to :project

  has_attached_file :image,
  	styles: {
  		thumb:'260x180#'
  	},
    s3_credentials: {
    access_key_id: 'AKIAJNUSQQMYYELN5VZQ',
    secret_access_key: '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',
    bucket: 'hackeryou'
  }
  attr_accessible :image
end
