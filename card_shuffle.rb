# O(n) algorithm for shuffling a deck of cards
cards = [array of cards]
shuffled = []
(cards.length).times do
   x = rand(1..cards.length)
   cards.delete_at(x-1)
   shuffled << x
end
