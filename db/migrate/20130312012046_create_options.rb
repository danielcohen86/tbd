class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :description
      t.references :project
      t.text :photo_url

      t.timestamps
    end
    add_index :options, :project_id
  end
end
