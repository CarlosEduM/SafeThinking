# frozen_string_literal: true

require './safe_thinking_views'
require './safe_thinking'
require './controller'
require './app_constants'

# Redirect to the option choised
def redirect_to_option(option, controller)
  case option
  when 1
    controller.new_safe_thinking
  when 2
    controller.new_safe_word
  else
    controller.out_of_options
  end
end

def main
  controller = Controller.new(AppConstants::SAFE_WORDS_FILE, AppConstants::SAFE_THINKING_FILE)

  loop do
    option = controller.home

    break if option.zero?

    redirect_to_option(option, controller)

    print('Press enter to continue...')
    gets
  end
end

main
