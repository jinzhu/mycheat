= Migrations: |-
== Methods:
    create_table(name, options)
    drop_table(name)
    rename_table(old_name, new_name)
    add_column(table_name, column_name, type, options)
    rename_column(table_name, column_name, new_column_name)
    change_column(table_name, column_name, type, options)
    remove_column(table_name, column_name)
    add_index(table_name, column_name, index_type)
    remove_index(table_name, column_name)
  
=== SQL: Queries can be executed directly:
    execute 'ALTER TABLE researchers ADD CONSTRAINT fk_researchers_departments FOREIGN KEY ( department_id ) REFERENCES departments( id )'

=== Changing tables,You can:
    change_table :products do |t|
      t.remove :description, :name
      t.string :part_number
      t.index :part_number
      t.rename :upccode, :upc_code
    end

    The Same As:

    remove_column :products, :description
    remove_column :products, :name
    add_column :products, :part_number, :string
    add_index :products, :part_number
    rename_column :products, :upccode, :upc_code

== Available Column Types:
    integer
    float
    datetime
    date
    timestamp
    time
    text
    string
    binary
    boolean
    decimal :precision, :scale
=== You can create columns of types not supported by Active Record when using the non sexy syntax, for example
    create_table :products do |t|
      t.column :name, 'polygon', :null => false
    end
=== references:
    t.references :category Will create :category_id

    t.references :attachment, :polymorphic => {:default => 'Photo'}
    will add an attachment_id column and a string attachment_type column with a default value of Photo

== Filename:
=== UTC timestamp:
  YYYYMMDDHHMMSS_create_products.rb
=== Numbering scheme:
  Set config.active_record.timestamped_migrations To false in environment.rb
  
== Creating A Migration:
=== Creating a model:
=== Creating a standalone migration:
    ruby script/generate migration RemovePartNumberFromProducts part_number:string
    ruby script/generate migration AddDetailsToProducts part_number:string price:decimal

== Valid Column Options:
    :options => "ENGINE=BLACKHOLE"
    limit
    null (i.e. ":null => false" implies NOT NULL)
    default (to specify default values)
    :decimal, :precision => 8, :scale => 3
    
== Rake Tasks:
    rake db:schema:dump: run after you create a model to capture the schema.rb
    rake db:schema:import: import the schema file into the current database (on error, check if your schema.rb has ":force => true" on the create table statements
    ./script/generate migration MigrationName: generate a new migration with a new 'highest' version (run './script/generate migration' for this info at your fingertips)
    rake db:migrate: migrate your current database to the most recent version
    rake db:migrate VERSION=5: migrate your current database to a specific version (in this case, version 5)
    rake db:rollback: migrate down one migration
    rake db:rollback STEP=3: migrate down three migrations
    rake db:migrate RAILS_ENV=production: migrate your production database
    
== Find Highest version:
    script/runner "puts ActiveRecord::Migrator.current_version"

== More:
    http://guides.rubyonrails.org/migrations.html
