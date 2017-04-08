class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :number
      t.string :name
      t.references :job, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
