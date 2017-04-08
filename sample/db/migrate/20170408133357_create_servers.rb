class CreateServers < ActiveRecord::Migration[5.1]
  def change
    create_table :servers do |t|
      t.string :name
      t.string :hostname
      t.references :server_type, foreign_key: true
      t.integer :sequence_number
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
