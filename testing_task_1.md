### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) #should be more like the bottom method as in self.check_for_ace(card)
    if card.value = 1 #should be == instead of =
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #should be def instead of dif and a comma is missing between cards.  should be self.highest_card also. indentation is not correct here.
  if card1.value > card2.value
    return card #should be card1 instead of card
  else
    return card2
  end
end
end # one too many end here.  will move it to the bottom.

def self.cards_total(cards) #this should be indented
  total #should be total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total #this is currently within the for loop.  will move it to after the next end statement.
  end
end
```
