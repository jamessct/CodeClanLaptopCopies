import static org.junit.Assert.*;
import org.junit.*;
import game.*;

public class DeckTest {

  Card card;
  Deck deck;

  @Before 
  public void before() {
    card = new Card(SuitType.DIAMONDS, RankType.TWO);
    deck = new Deck();
  }

  @Test
  public void canAddCard() {
    deck.addCard(card);
    int result = deck.cardCount();
    assertEquals(result, 1);
  }

  @Test
  public void canCreateFullDeck() {
    deck.createFullDeck();
    int result = deck.cardCount();
    assertEquals(52, result);
  }

  @Test
  public void canRemoveCard() {
    deck.createFullDeck();
    deck.dealCard();
    int result = deck.cardCount();
    assertEquals(51, result);
  }


}