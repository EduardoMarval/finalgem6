# db/seeds.rb

# Create sample Admin
User.create!(
  full_name: "John Doe",
  email: "john@example.com",
  password: "password",
  role: 1
)


puts "Seed data created successfully."