require 'csv'

class Customer < ApplicationRecord
  belongs_to :project

  def self.import(file)
    CSV.foreach('lib/customers.csv', :headers => true) do |row|
      Moulding.create!(row.to_hash)
    end
  end

end
