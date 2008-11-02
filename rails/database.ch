= DataBase:
== Configure:
=== Sqlite:
  development:
  adapter: sqlite3
  database: db/development.sqlite3
  timeout: 5000
=== Mysql:
  development:
  adapter: mysql
  encoding: utf8
  database: blog_development
  username: root
  password:
  socket: /tmp/mysql.sock
=== PostgreSQL:
  development:
  adapter: postgresql
  encoding: unicode
  database: blog_development
  username: blog
  password:

== Operate with Rails console:
  ./script/dbconsole
