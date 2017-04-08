class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :server, foreign_key: true
      t.date :reception_date
      t.date :start_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
