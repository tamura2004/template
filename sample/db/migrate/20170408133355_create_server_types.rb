class CreateServerTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :server_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
