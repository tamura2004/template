class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :number
      t.string :name
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
