class Project < ApplicationRecord
  has_one :customer
  belongs_to :task
end
