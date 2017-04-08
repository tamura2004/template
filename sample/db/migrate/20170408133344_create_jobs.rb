class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :number
      t.string :name

      t.timestamps
    end
  end
end
