# File: lib/diary.rb

class Diary
  def initialize
    @diary_entries = []
    @total_words = 0
  end

  def add(entry) 
    @diary_entries << entry
  end

  def all
    return @diary_entries
  end

  def count_words
    @diary_entries.each {|entry|
      @total_words += entry.count_words
    }
    return @total_words
  end

  def reading_time(wpm) 
    return count_words / wpm
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    word_count_to_find = wpm * minutes
    entry_to_return = [[],0]
    matching_entries = Array.new
    @diary_entries.each { |entry|
      if entry.count_words == word_count_to_find
        return entry
      elsif entry.count_words <= word_count_to_find
        matching_entries << entry
      end 
    }
    matching_entries.each { |entry|
      if entry.length > entry_to_return[1]
        entry_to_return = [entry, entry.length]
      end
    }
    return entry_to_return
  end
end