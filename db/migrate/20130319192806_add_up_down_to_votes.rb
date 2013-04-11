class AddUpDownToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :updown, :integer
  end
end
