class Project < ActiveRecord::Base
  attr_accessible :description, :title, :user

  has_many :options
end
