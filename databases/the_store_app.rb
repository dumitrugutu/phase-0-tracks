# Create a store app

# require gems
require 'sqlite3'
require 'faker'

# Create SQLite3 database
store_database = SQLite3::Database.new("store.db")

# use string delimiters to create tables
create_table_customers = <<-SQL
  CREATE TABLE IF NOT EXISTS customers(
    id INTEGER PRIMARY KEY,
    customer_name VARCHAR(255),
    card_number INTEGER
  )
SQL

create_table_items = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    item_name VARCHAR(255),
    quantity INTEGER,
    price INTEGER
  )
SQL

create_table_managers = <<-SQL
  CREATE TABLE IF NOT EXISTS managers(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    idn INTEGER
  )
SQL

# create customers and managers tables
store_database.execute(create_table_customers)
store_database.execute(create_table_items)
store_database.execute(create_table_managers)
store_database.results_as_hash = true

# add testcode
# store_database.execute("INSERT INTO customers (name, card_number) 
#   VALUES ('Peter Gross', 1234567890987654)")

# store_database.execute("INSERT INTO items (item_name, quantity, price)
#   VALUES('Toilet paper', 34, 11)")

# store_database.execute("INSERT INTO managers (name, idn)
#   VALUES ('Craig McFarlane', 76890)")

# use ORM to retrieve data 
# customers = store_database.execute("SELECT * FROM customers")
# customers.each do |customer|
#   puts "#{customer['name']} has this card number #{customer['card_number']}"
# end

# create method that adds customers to database
# def create_customers(store_database, name, card_number)
#   store_database.execute("INSERT INTO customers (name, card_number) 
#     VALUES (?, ?)", [name, card_number])
# end

# 1000.times do
#   create_customers(store_database, Faker::Name.name, Faker::Business.credit_card_number
# end

# create method that authorizes managers to modify data in the customers table
def manager_identification(store_database, manager_idn)
  managers = store_database.execute("SELECT idn FROM managers")
  managers.each do |manager|
    if manager['idn'] == manager_idn
      puts "You have successfully logged in!"
      return true
    else
      puts "Please try again"
      return false
    end
  end
end

# add managers to the table managers
def add_managers(store_database, name, idn)
  store_database.execute("INSERT INTO managers (name, idn) 
    VALUES (?, ?)", [name, idn])
end

# delete managers from table managers
def delete_manager(store_database, name)
  store_database.execute("DELETE FROM managers WHERE name = ?", [name])
end

# add user interface
puts "Enter your identification number(idn):"
manager_idn = gets.chomp.to_i
manager_identification(store_database, manager_idn)
