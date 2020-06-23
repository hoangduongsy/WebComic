class CreateChapter < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.string :name
      t.integer :production_id
      t.integer :summary_id
      t.integer :number
      t.timestamps
    end
  end
end
