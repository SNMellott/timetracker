class AddStopTimeToTaskEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :task_entries, :stop_time, :datetime
  end
end
