def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card  #generates one card value
   rand(1..11)
end

def display_card_total(card_total) #counts total of card values
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round #inital two card deal
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total # REQUIRED !!!!
end

def hit?(card_total)
  prompt_user
  hit_or_stay = get_user_input
  case hit_or_stay
    when "h"
      card_total += deal_card
      display_card_total(card_total)
    return card_total
    when "s"
      card_total = card_total
    else
      invalid_command
  end

  end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################

def runner
  welcome
    hand = initial_round
    until hand > 21 do
        hand = hit?(hand)
    end
   end_game(hand)
end
