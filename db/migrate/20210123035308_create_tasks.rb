class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.text :State
      t.date :Limit
      t.text :Task

      t.timestamps
    end
  end
end
