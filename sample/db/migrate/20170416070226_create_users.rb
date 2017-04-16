class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :number
      t.string :name
      t.integer :job
      t.integer :group

      t.timestamps
    end
  end
end
