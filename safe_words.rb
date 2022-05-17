# Handles a hash with safe words to dirty words
class SafeWords
  def initialize
    @safe_words_dictionary = {}
  end

  # Get one safe word to a specified dirty word
  def safe_word_to(dirty_word)
    @safe_words_dictionary[dirty_word]
  end

  # Add a new safe word on dictionary
  def add_a_new_safe_word(dirty_word, safe_word)
    @safe_words_dictionary[dirty_word] = safe_word
  end

  def sub_dirty_words_from(think)
    words = think.split

    safe_words = words.map { |word| @safe_words_dictionary.key?(word) ? @safe_words_dictionary[word] : word }

    safe_words.join(' ')
  end
end
