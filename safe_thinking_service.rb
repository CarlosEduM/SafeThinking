# frozen_string_literal: true

require 'json'
require './safe_thinking'

# Save a SafeThinking and safe words in a archive
class SafeThinkingService
  def initialize(file_to_safe_words, file_to_safe_thinking)
    @file_to_safe_words = file_to_safe_words
    @file_to_safe_thinking = file_to_safe_thinking
  end

  attr_reader :safe_thinking

  def save_safe_words(safe_words)
    File.open(@file_to_safe_words, 'w') do |safe_words_file|
      safe_words_file << JSON.pretty_generate(safe_words)
    end
  end

  def safe_words
    if File.exist?(@file_to_safe_words)
      SafeThinking.new(JSON.parse(File.open(@file_to_safe_words, 'r', &:read)))
    else
      SafeThinking.new
    end
  end
end
