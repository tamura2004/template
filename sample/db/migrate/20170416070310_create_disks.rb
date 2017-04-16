class CreateDisks < ActiveRecord::Migration[5.0]
  def change
    create_table :disks do |t|
      t.references :resource, foreign_key: true
      t.references :disk_type, foreign_key: true
      t.integer :sequence_number
      t.integer :size

      t.timestamps
    end
  end
end
