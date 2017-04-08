class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.references :server, foreign_key: true
      t.references :cpu_memory_price, foreign_key: true
      t.string :status
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
