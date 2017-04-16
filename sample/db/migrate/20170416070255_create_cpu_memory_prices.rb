class CreateCpuMemoryPrices < ActiveRecord::Migration[5.0]
  def change
    create_table :cpu_memory_prices do |t|
      t.integer :cpu
      t.integer :memory
      t.integer :price

      t.timestamps
    end
  end
end
