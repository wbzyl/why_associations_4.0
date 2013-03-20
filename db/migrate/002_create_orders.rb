class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.string :order_number
      t.references :customer, index: true

      t.timestamps
    end
  end
end
