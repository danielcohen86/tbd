class Vote < ActiveRecord::Base
  belongs_to :option

  attr_accessible :updown

  after_create :update_score

  def update_score
  	self.option.score += updown
  	self.option.save
  end
end
