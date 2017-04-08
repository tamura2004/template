class CreateServerInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :server_infos do |t|
      t.references :server, foreign_key: true
      t.references :account, foreign_key: true
      t.references :startup, foreign_key: true

      t.timestamps
    end
  end
end
