class TaskEntry < ApplicationRecord
  validates :duration, presence: true
  validates :note, presence: true
  has_one :task
end
