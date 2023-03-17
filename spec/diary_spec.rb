# File: spec/diary_entry.rb
require 'diary'

RSpec.describe Diary do
  it "returns array of entrys" do
    diary = Diary.new()
    result = diary.all
    expect(result).to eq []
  end
end