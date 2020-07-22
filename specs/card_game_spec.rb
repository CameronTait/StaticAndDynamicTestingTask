require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../card_game.rb")
require_relative("../card.rb")

class CardGameTest < MiniTest::Test

  def setup
    @card1 = Card.new("Ace", 1)
    @card2 = Card.new("Clubs", 2)
    @card3 = Card.new("Diamonds", 5)

    @cards = [@card1, @card2]
  end

  #Tests whether the the card is an ace or not
  def test_check_for_ace_true
    assert_equal(true, CardGame.check_for_ace(@card1))
  end

  def test_check_for_ace_false
    assert_equal(false, CardGame.check_for_ace(@card2))
  end

  #Will test which of the cards is higher
  def test_highest_card
    assert_equal(@card2, CardGame.highest_card(@card1, @card2))
  end

  #Tests for the sum of the card numbers
  def test_cards_total
    assert_equal("You have a total of 3", CardGame.cards_total(@cards))
  end
end
