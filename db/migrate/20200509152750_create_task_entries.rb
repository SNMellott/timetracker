class CreateTaskEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :task_entries do |t|
      t.references :task
      t.datetime :duration
      t.text :note
      t.datetime :start_time

      t.timestamps
    end
  end
end
