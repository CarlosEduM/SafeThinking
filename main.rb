# Prints the main view on terminal
def main_view
  system 'cls'
  puts('Hello, what you want to do?')
  puts('1 - Type a new phrase')
  puts('2 - Save a new Safe Word')
  puts('0 - exit')
  print('R: ')

  gets.to_i
end

def main
  operation = main_view

  case operation
  when 0
    system 'cls'
    puts('Goodbye')
    exit
  when 1
    system 'cls'
  else
    print('Response out of the options')
  end
end

main
