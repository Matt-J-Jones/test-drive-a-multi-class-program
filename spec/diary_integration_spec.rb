# File: spec/diary_integration_spec
require 'diary'
require 'diary_entry'

RSpec.describe "Diary integration spec" do
  it "returns single entry" do
    diary = Diary.new
    entry = DiaryEntry.new("day 1", "hello, world")
    diary.add(entry)
    expect(diary.all).to eq [entry]
  end

  it "returns two diary entries" do
    diary = Diary.new
    entry_0 = DiaryEntry.new("day 1", "hello, world")
    entry_1 = DiaryEntry.new("day 2", "world, hello")
    diary.add(entry_0)
    diary.add(entry_1)
    expect(diary.all).to eq [entry_0, entry_1]
  end

  it "returns count of the total words in all entries" do
    diary = Diary.new
    entry_0 = DiaryEntry.new("day 1", "hello, world")
    entry_1 = DiaryEntry.new("day 2", "world, hello")
    diary.add(entry_0)
    diary.add(entry_1)
    expect(diary.count_words).to eq 4
  end

  it "returns reading time of 2 with wpm of 2" do
    diary = Diary.new
    entry_0 = DiaryEntry.new("day 1", "hello, world")
    entry_1 = DiaryEntry.new("day 2", "world, hello")
    diary.add(entry_0)
    diary.add(entry_1)
    expect(diary.reading_time(2)).to eq 2
  end

  it "returns reading time of 3 with wpm of 2" do
    diary = Diary.new
    entry_0 = DiaryEntry.new("day 1", "hello, world one")
    entry_1 = DiaryEntry.new("day 2", "world, hello two")
    diary.add(entry_0)
    diary.add(entry_1)
    expect(diary.reading_time(2)).to eq 3
  end

  it "returns entry of length from two that can be read in reading time of 3 and wpm of 1" do
    diary = Diary.new
    entry_0 = DiaryEntry.new("day 1", "hello, world one")
    entry_1 = DiaryEntry.new("day 2", "world, hello")
    diary.add(entry_0)
    diary.add(entry_1)
    expect(diary.find_best_entry_for_reading_time(1, 3)).to eq entry_0
  end

  it "returns entry of length from three that can be read in reading time of 3 and wpm of 1" do
    diary = Diary.new
    entry_0 = DiaryEntry.new("day 1", "hello, world one")
    entry_1 = DiaryEntry.new("day 2", "world, hello")
    entry_2 = DiaryEntry.new("day 3", "hello, world, world, hello")
    diary.add(entry_0)
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.find_best_entry_for_reading_time(1, 3)).to eq entry_0
  end
end