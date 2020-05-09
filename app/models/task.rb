class Task < ApplicationRecord
  has_one :project
  has_one :user
  belongs_to :task_entry
end
