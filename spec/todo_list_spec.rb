require 'todo_list'

RSpec.describe TodoList do
  it "list with no items returns blank for incomplete" do
    list = TodoList.new
    expect(list.incomplete).to eq []
  end

  it "list with no items returns blank for complete" do
    list = TodoList.new
    expect(list.complete).to eq []
  end
end