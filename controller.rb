# frozen_string_literal: true

require './safe_thinking_views'
require './safe_thinking_service'

# Control all processes
class Controller
  def initialize(file_to_safe_words, file_to_safe_thinking)
    @safe_thinking_service = SafeThinkingService.new(file_to_safe_words, file_to_safe_thinking)
    @safe_thinking = @safe_thinking_service.safe_words
  end

  # Call a main view
  def home
    SafeThinkingViews.main_view
  end

  # Make a new safe thinking
  def new_safe_thinking
    new_thinking = SafeThinkingViews.new_safe_thinking_view
    SafeThinkingViews.response_view(@safe_thinking.new_safe_thinking(new_thinking))
  end

  # Add a new safe word
  def new_safe_word
    new_safe_word = SafeThinkingViews.new_safe_word_view
    @safe_thinking.add_a_new_safe_word(new_safe_word[:dirty_word], new_safe_word[:safe_word])
    @safe_thinking_service.save_safe_words(@safe_thinking.safe_words_dictionary)
  end

  # Say when don't has a option for it in script
  def out_of_options
    SafeThinkingViews.out_of_options_view
  end
end
