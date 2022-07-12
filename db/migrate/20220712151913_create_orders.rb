class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :client_name
      t.string :car_model
      t.string :car_number

      t.timestamps
    end
  end
end
