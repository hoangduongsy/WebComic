class CreateProductionPayment < ActiveRecord::Migration[6.0]
  def change
    create_table :production_payments do |t|
      t.integer :payment_id
      t.integer :production_id
      t.decimal :price, precision: 10, scale: 2
      t.integer :amount
      t.string  :license
      t.decimal :total_price, precision: 10, scale: 2
    end
  end
end
