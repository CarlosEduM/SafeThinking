require './safe_thinking_views'
require './safe_words'

# Control all processes
class Controller
  def initialize
    @safe_words = SafeWords.new
  end

  # Call a main view
  def home
    SafeThinkingViews.main_view
  end

  # Make a new safe thinking
  def new_safe_thinking
    new_think = SafeThinkingViews.new_safe_thinking_view
    @safe_words.sub_dirty_words_from(new_think)
  end

  # Add a new safe word
  def new_safe_word
    new_safe_word = SafeThinkingViews.new_safe_word_view
    @safe_words.add_a_new_safe_word(new_safe_word['dirty_word'], new_safe_word['safe_word'])
  end
end