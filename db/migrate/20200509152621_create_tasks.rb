class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :project
      t.references :user
      t.string :task_name

      t.timestamps
    end
  end
end
