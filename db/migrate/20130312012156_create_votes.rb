class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :option

      t.timestamps
    end
    add_index :votes, :option_id
  end
end
