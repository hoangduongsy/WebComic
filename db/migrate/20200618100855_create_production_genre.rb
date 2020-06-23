class CreateProductionGenre < ActiveRecord::Migration[6.0]
  def change
    create_table :production_genres do |t|
      t.integer :genre_id
      t.integer :production_id
    end
  end
end
