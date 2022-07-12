class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :title
      t.integer :price
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
