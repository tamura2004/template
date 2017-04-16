class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :number
      t.string :name
      t.integer :group

      t.timestamps
    end
  end
end
