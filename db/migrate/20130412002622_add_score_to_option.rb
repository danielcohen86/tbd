class AddScoreToOption < ActiveRecord::Migration
  def up
    add_column :options, :score, :integer, default: 0

    Option.reset_column_information

    Option.all.each do |o|
    	o.score = o.votes.sum(:updown)
    	o.save
    end
  end

  def down
  	remove_column :options, :score
  end
end
