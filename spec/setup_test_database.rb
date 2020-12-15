require 'pg'

p "setting up a test database..."

connection = PG.connect(dbname: "bookmark_manager_test")

connection.exec("TRUNCATE bookmarks;")

p "connection success - table truncated"
