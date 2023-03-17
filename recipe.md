```Ruby
#1
diary = Diary.new
entry = DiaryEntry.new("day 1", "hello, world")
diary.add(entry)
diary.all # => [entry]

#2
diary = Diary.new
entry_0 = DiaryEntry.new("day 1", "hello, world")
entry_1 = DiaryEntry.new("day 2", "world, hello")
diary.add(entry_0)
diary.add(entry_1)
diary.all # => [entry_0, entry_1]

#3
diary = Diary.new
entry_0 = DiaryEntry.new("day 1", "hello, world")
entry_1 = DiaryEntry.new("day 2", "world, hello")
diary.add(entry_0)
diary.add(entry_1)
diary.count_words # => 4

#4
diary = Diary.new
entry_0 = DiaryEntry.new("day 1", "hello, world")
entry_1 = DiaryEntry.new("day 2", "world, hello")
diary.add(entry_0)
diary.add(entry_1)
diary.reading_time(2) # => 2

#5
diary = Diary.new
entry_0 = DiaryEntry.new("day 1", "hello, world one")
entry_1 = DiaryEntry.new("day 2", "world, hello two")
diary.add(entry_0)
diary.add(entry_1)
diary.reading_time(2) # => 3

#6
diary = Diary.new
entry_0 = DiaryEntry.new("day 1", "hello, world one")
entry_1 = DiaryEntry.new("day 2", "world, hello")
diary.add(entry_0)
diary.add(entry_1)
diary.find_best_entry_for_reading_time(1, 3) #=> entry_0

#7
diary = Diary.new
entry_0 = DiaryEntry.new("day 1", "hello, world one")
entry_1 = DiaryEntry.new("day 2", "world, hello")
entry_2 = DiaryEntry.new("day 3", "hello, world, world, hello")
diary.add(entry_0)
diary.add(entry_1)
diary.add(entry_2)
diary.find_best_entry_for_reading_time(1, 3) #=> entry_0

```