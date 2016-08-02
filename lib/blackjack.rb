def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(t)
  puts "Sorry, you hit #{t}. Thanks for playing!"
end

def initial_round
  c1,c2 = deal_card, deal_card
  display_card_total(c1+c2)
  c1 + c2
end

def hit?(ans)
  prompt_user
  if get_user_input == "h"
    return ans + deal_card
  else
    return ans
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
