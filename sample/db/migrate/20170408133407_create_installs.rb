class CreateInstalls < ActiveRecord::Migration[5.1]
  def change
    create_table :installs do |t|
      t.references :server, foreign_key: true
      t.references :software, foreign_key: true

      t.timestamps
    end
  end
end
