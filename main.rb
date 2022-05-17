require './safe_thinking_views'
require './safe_words'
require './controller'

def main
  controller = Controller.new
  loop do
    option = controller.home

    break if option.zero?

    case option
    when 1
      puts controller.new_safe_thinking
    when 2
      puts controller.new_safe_word
    end

    system 'pause'
  end
end

main
