# File: lib/todo.rb
class Todo
  def initialize(task) 
    @task = task
    @done = false
  end

  def task
    return @task
  end

  def mark_done!
    @done = true
  end

  def done?
    return @done
  end
end