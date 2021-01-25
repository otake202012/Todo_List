class RenameStateToState < ActiveRecord::Migration[5.0]
  def change
    rename_column :tasks, :State, :state
    rename_column :tasks, :Limit, :limit
    rename_column :tasks, :Task, :task
  end
end
