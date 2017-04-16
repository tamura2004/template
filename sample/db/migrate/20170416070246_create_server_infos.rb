class CreateServerInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :server_infos do |t|
      t.references :server, foreign_key: true
      t.integer :account
      t.integer :startup

      t.timestamps
    end
  end
end
