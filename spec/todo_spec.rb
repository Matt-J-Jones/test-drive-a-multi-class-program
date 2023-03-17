require 'todo'

RSpec.describe Todo do
  it "adds task, returns task" do
    task = "buy bread"
    new_item = Todo.new(task)
    expect(new_item.task).to eq task
  end

  it "adds task, marks done, returns done" do
    task = "buy bread"
    new_item = Todo.new(task)
    new_item.mark_done!
    expect(new_item.done?).to eq true
  end

  it "adds task, does not mark done, returns not done" do
    task = "buy bread"
    new_item = Todo.new(task)
    expect(new_item.done?).to eq false
  end
end