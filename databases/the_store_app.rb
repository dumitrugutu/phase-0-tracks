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
    name VARCHAR(255),
    card_number INTEGER,
    amount INTEGER
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
# store_database.execute("INSERT INTO customers (name, card_number, amount) 
#   VALUES ('Peter Gross', 1234567890987654, 500)")

# store_database.execute("INSERT INTO items (item_name, quantity, price)
#   VALUES('Toilet paper', 34, 11)")

# store_database.execute("INSERT INTO managers (name, idn)
#   VALUES ('Craig McFarlane', 76890)")

# use ORM to retrieve data 
# customers = store_database.execute("SELECT * FROM customers")
# customers.each do |customer|
#   puts "#{customer['name']} has #{customer['amount']} dollars available on his card"
# end

# create method that adds customers to database

# create method that authorizes managers to modify data in the customers table

# add user interface