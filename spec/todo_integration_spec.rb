require 'todo_list'
require 'todo'

RSpec.describe "todo list" do
  it "adds item to list, returns list" do
    list = TodoList.new
    item = Todo.new("buy bread")
    list.add(item)
    expect(list.incomplete).to eq [item]
  end

  it "adds two items to list, returns whole list" do
    list = TodoList.new
    item_0 = Todo.new("buy bread")
    item_1 = Todo.new("buy milk")
    list.add(item_0)
    list.add(item_1)
    expect(list.incomplete).to eq [item_0, item_1]
  end

  it "adds two items to list, marks one as done, returns complete" do
    list = TodoList.new
    item_0 = Todo.new("buy bread")
    item_1 = Todo.new("buy milk")
    list.add(item_0)
    list.add(item_1)
    item_0.mark_done!
    expect(list.incomplete).to eq [item_1]
  end

  it "adds two items to list, gives up, returns complete" do
    list = TodoList.new
    item_0 = Todo.new("buy bread")
    item_1 = Todo.new("buy milk")
    list.add(item_0)
    list.add(item_1)
    list.give_up!
    expect(list.complete).to eq [item_0, item_1]
  end
end
