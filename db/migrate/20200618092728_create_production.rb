class CreateProduction < ActiveRecord::Migration[6.0]
  def change
    create_table :productions do |t|
      t.integer :summary_id
      t.integer :author_id
      t.string :comic_name
      t.string :title
      t.string :author_name
      t.string :description
      t.decimal :price , :precision => 10, :scale => 2
      t.string :status
      t.datetime :release_date
      t.timestamps
    end
  end
end
