class Vote < ActiveRecord::Base
  belongs_to :option
  belongs_to :user

  attr_accessible :updown

  after_create :update_score

  def update_score
  	votes = option.votes(true).order("created_at desc").group_by(&:user_id)
  	score = votes.reduce(0){ |sum, a| sum + a.last.first.updown }
  	option.score = score
  	option.save
  end
end

