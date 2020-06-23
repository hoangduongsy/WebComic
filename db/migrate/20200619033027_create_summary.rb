class CreateSummary < ActiveRecord::Migration[6.0]
  def change
    create_table :summaries do |t|
      t.integer :favorite_count
      t.integer :view_count
    end
  end
end
