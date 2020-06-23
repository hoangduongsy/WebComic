class CreateUserProduction < ActiveRecord::Migration[6.0]
  def change
    create_table :user_productions do |t|
      t.integer :user_id
      t.integer :production_id
      t.timestamps
    end
  end
end
