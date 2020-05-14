User.create!(username: "Sara Mellott",
             email: "sara@example.com",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true)
User.create!(username: "Will Westin",
             email: "will@example.com",
             password: "foobar",
             password_confirmation: "foobar")
User.create!(username: "Bill Archer",
             email: "archer@example.com",
             password: "foobar",
             password_confirmation: "foobar")

Customer.create!(company: "Editor Graphics",
                 address: "111 Main St",
                 city: "Columbus",
                 state: "OH",
                 zip: "43221")
Customer.create!(company: "Freddy's Pizzeria",
                 address: "123 Pizza St",
                 city: "Denver",
                 state: "CO",
                 zip: "80110")
