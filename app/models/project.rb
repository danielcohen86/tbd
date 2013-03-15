class Project < ActiveRecord::Base
  attr_accessible :description, :title

  validates :user, presence: true

  has_many :options
  belongs_to :user
end
