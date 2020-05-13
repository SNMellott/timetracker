class Task < ApplicationRecord
  belongs_to :project
  has_many :users
  has_many :task_entries
end
