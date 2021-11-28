require './connect_db.rb'
connect_db!

ActiveRecord::Migration.create_table(:todos) do |t|
  t.column :todo_text, :text
  t.column :due_date, :Date
  t.column :completed, :boolean
end
ActiveRecord::Migration.create_table(:users) do |u|
  u.column :name, :text
  u.column :email, :text
  u.column :password, :text
end
