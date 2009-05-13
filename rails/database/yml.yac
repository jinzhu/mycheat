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

== DRY out your database.yml:
  From: http://blog.bleything.net/articles/2006/06/27/dry-out-your-database-yml
  Updated with a more universal database naming scheme, which better accomodates multiple instances of the same application.
  
  -----
  
  login: &login
    adapter: mysql
    username: username
    password: password
    # host: mysql.example.com
    encoding: utf8
    port: 3306
  
   development:
    <<: *login
    database: app_domain_com_d
  
   test:
    <<: *login
    database: app_domain_com_t
  
   production:
    <<: *login
    database: app_domain_com_p
