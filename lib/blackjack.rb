require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  card_total
end

def deal_card
  # code #deal_card here
    rand(1..11)
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.strip.chomp
end

def end_game(card_total)
  # code #end_game here
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user = get_user_input
  if user == 'h'
    card_total += deal_card
  elsif user == 's'
    return card_total
  else
    invalid_command
    prompt_user
    user = get_user_input
  end
    card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome  
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)

end
    

#binding.pry
