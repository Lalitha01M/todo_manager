require './connect_db.rb'
require './users.rb'
connect_db!
User.create!(name: "lalitha", email: "llaitha@gmail.com", password: "lalitha123")
User.create!(name: "latha", email: "latha@gmail.com", password: "latha123")
User.create!(name: "lakshmi", email: "lakshmi@gmail.com", password: "lakshmi123")
