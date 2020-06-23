class CreatePayment < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.decimal :total_cost, precision: 10, scale: 2
      t.datetime :paid_at
      t.timestamps
    end
  end
end
