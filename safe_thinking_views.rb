# Contains all the views for aplication
class SafeThinkingViews
  # Prints the main view on terminal
  def self.main_view
    clear_view
    puts('Hello, what you want to do?')
    puts('1 - Type a new phrase')
    puts('2 - Save a new Safe Word')
    puts('0 - exit')
    print('R: ')

    gets.to_i
  end

  # Prints the goodbye view on terminal
  def self.goodbye_view
    clear_view
    puts('Goodbye')
  end

  def self.new_safe_thinking_view
    clear_view
    puts('What is your new think?')
    print('R: ')

    gets.to_s.strip
  end

  def self.new_safe_word_view
    clear_view
    puts('What is your dirty word?')
    print('R: ')
    dirty_word = gets.to_s.strip

    puts('What is your safe word for it?')
    print('R: ')
    safe_word = gets.to_s.strip

    { 'dirty_word' => dirty_word, 'safe_word' => safe_word }
  end

  def self.clear_view
    system('cls')
    system('clear')
  end

  private_class_method :clear_view
end
