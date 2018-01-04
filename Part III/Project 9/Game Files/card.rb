class Card
# Code goes here
SUITS = %w(Clubs Diamonds Hearts Spades)
RANKS = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
attr_accessor :rank, :suit
def initialize(rank, suit)
@rank = rank
@suit = suit
end
def to_s
"#{rank} of #{suit}"
end
# returns -1 if card1 is less than, 0 if same as, and 1 if larger than card2
def self.compare_rank(card1, card2)
RANKS.index(card1.rank) <=> RANKS.index(card2.rank)
end
def self.create_cards
cards = []
SUITS.each do |suit|
RANKS.each do |rank|
cards << Card.new(rank, suit)
end
end
cards
end
end
