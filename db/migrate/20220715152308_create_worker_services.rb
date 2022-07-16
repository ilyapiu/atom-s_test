class CreateWorkerServices < ActiveRecord::Migration[7.0]
  def change
    create_table :worker_services do |t|
      t.belongs_to :worker, null: false, foreign_key: true
      t.belongs_to :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
