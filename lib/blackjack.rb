def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input= gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total=deal_card+deal_card
  display_card_total(total)
  total
end

def hit?(number)
  prompt_user
  input = get_user_input
  until input == "s" || "h"
    invalid_command
    prompt_user
    input = get_user_input
  end
  if input == "h"
    number += deal_card
  elsif input == "s"
    number
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total=initial_round
  until card_total > 21
    card_total=hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
