def run
  print_header
  first_num = get_num('first')
  op = operator
  second_num = get_num('second')
  puts first_num.public_send(op, second_num)
end

def get_num(place)
  puts "Enter #{place} number"
  gets.to_f
end

def print_header
  puts "Welcome to Ruby Calculator"
  puts "__________________________"
end

def operator
  valid = false
  until valid
    puts "Enter operator (+, -, /, *)"
    op = gets.strip
    valid = op =~ /\+|-|\*|\//
  end
  op
end

while true
  run
  puts "Type q to exit or any key to continue"
  exit if gets.strip.downcase == 'q'
end
