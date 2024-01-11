=begin
1. Initialize deck
  - create array for cards [['Hearts' 'K'], ['Hearts' 'J'] []]
2. Deal cards to player and dealer
  - randomly choose card
  - push card to current player array
  - calculate points
3. display cards
  - create card graphic
  - for human card graphic shows values
  - for computer one card shows values second card has `???`
4. Player turn: hit or stay
  - repeat until bust or "stay"
5. If player bust, dealer wins.
6. Dealer turn: hit or stay
  - repeat until total >= 17
7. If dealer bust, player wins.
8. Compare cards and declare winner.
=end

SUITES = ["Hearts", "Spades", "Diamonds", "Clubs"]
VALUES = ['Ace', 'King', 'Queen', 'Jack', '10', '9', '8', '7', '6', '5', '4', '3', '2', '1']
player_cards = []
dealer_cards = []
player_score = 0
dealer_score = 0

def initialize_deck 
  VALUES.product(SUITES)
end

def card_name(card)
  "#{card[0]} of #{card[1]}"
end

def deal(deck, player)
  card = deck.sample
  player.push(card)
  deck.delete(card)
end


def display_cards#(player_cards)
card_name = 
card_suit = 
puts " ----------     "*4
puts "|          |    "*4
puts "|          |    "*4
puts "|          |    "*4
puts "|          |    "*4
puts "|          |    "*4
puts "|          |    "*4
puts " ----------     "*4
end

display_cards
deck = initialize_deck
deck
deal(deck, player_cards)
p player_cards