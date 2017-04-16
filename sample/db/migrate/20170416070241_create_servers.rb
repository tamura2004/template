class CreateServers < ActiveRecord::Migration[5.0]
  def change
    create_table :servers do |t|
      t.string :name
      t.string :hostname
      t.integer :server_type
      t.integer :sequence_number
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
