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

# add testcode

# use ORM to retrieve data 

# create method that adds customers to database

# create method that authorizes managers to modify data in the customers table

# add user interface