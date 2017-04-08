class CreateHeadquarters < ActiveRecord::Migration[5.1]
  def change
    create_table :headquarters do |t|
      t.string :number
      t.string :name

      t.timestamps
    end
  end
end
