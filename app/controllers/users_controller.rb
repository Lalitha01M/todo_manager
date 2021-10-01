class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    # render plain: "Hello, this is /todos!"
    # render plain: Todo.all.to_a
    render plain: User.all.map{ |user| user.to_pleasant_string}.join("\n")
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.to_pleasant_string
  end

  def create
    todo_text = params[:todo_test]
    due_date = DateTime.parse(params[:due_date])
    new_todo = Todo.create!(todo_text: todo_text, due_date: due_date, completed: false)
    response_text = "hey, your new todo is created with the id #{new_todo.id}"
    render plain: response_text
  end

  def update
    id = params[:id]
    completed = params[:completed]
    todo = Todo.find(id)
    todo.completed = completed
    todo.save!
    render plain: "updated todo completed status to #{completed}"
  end
end