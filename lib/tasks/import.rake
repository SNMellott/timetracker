require 'csv'

desc "Import Customers from CSV"
task customers: :environment do
  customers = File.join Rails.root "customers.csv"
  counter = 0

  CSV.foreach(customers, headers: true) do |row|
    p row
    p row["Company"]
    #company, address1, address2, address3, city, state, zip, phone1, phone2, fax1, fax2, email, website = row
    customer = Customer.create(company: company, address1: address1, address2: address2, address3: address3,
                    city: city, state: state, zip: zip, phone1: phone1, phone2: phone2, fax1: fax1,
                    fax2: fax2, email: email, website: website)
    puts "#{company} - #{customer.errors.full_messages.join(",")}" if customer.errors.any?
    counter += 1 if customer.persisted?
  end

  puts "Imported #{counter} customers"
end
