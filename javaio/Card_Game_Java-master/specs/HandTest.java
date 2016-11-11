import static org.junit.Assert.*;
import org.junit.*;
import game.*;

public class HandTest {

  Card card;
  Hand hand;
  Deck deck;

  @Before 
  public void before() {
    card = new Card(SuitType.DIAMONDS, RankType.TWO);
    hand = new Hand();
    deck = new Deck();
  }

  @Test
  public void canTakeCard() {
    hand.takeCard(card);
    int result = hand.cardCount();
    assertEquals(result, 1);
  }

}