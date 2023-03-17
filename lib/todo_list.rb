# File: lib/todo_list.rb
class TodoList
  def initialize
    @list = []
  end

  def add(todo) 
    @list << todo
  end

  def incomplete
    return @list.select { |item| !item.done? }
  end

  def complete
    return @list.select { |item| item.done? }
  end

  def give_up!
    @list.each { |item| 
      item.mark_done!
    }
  end
end