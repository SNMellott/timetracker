class Project < ApplicationRecord
  belongs_to :customer
  has_many :tasks
  has_many :users, through :tasks #only necessary if you have project and needed to get users associated 
end
