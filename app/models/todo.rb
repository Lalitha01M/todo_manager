class Todo < ActiveRecord::Base

  belongs_to: user

  def due_today?
    due_date == Date.today
  end

  def self.overdue
    all.where("completed = ? and due_date < ?", false,Date.today)
  end

  def self.due_today
    all.where("due_date = ?", Date.today)
  end

  def self.due_later
    all.where("due_date > ?", Date.today)
  end

  def self.completed
    all.where(completed: true)
  end
  def self.show_list
    puts "My Todo-list\n\n"
    puts "Overdue\n"
    puts overdue.show_list
    puts "\n\n"

    puts " Due Today\n"
    puts due_today.show_list
    puts "\n\n"

    puts "Due Later\n"
    puts due_later.show_list
    puts "\n\n"
  end

  def self.mark_as_complete!(id)
    todo = find(id)
    todo.completed = true
    todo.save!
    todo
  end
end
