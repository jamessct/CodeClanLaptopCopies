import static org.junit.Assert.*;
import org.junit.*;
import game.*;

public class CardTest {

  Card card;

  @Before 
  public void before(){
    card = new Card(SuitType.DIAMONDS, RankType.TWO);
  }

  @Test
  public void canGetSuit(){
    assertEquals(card.getSuit(), SuitType.DIAMONDS);
  }

  @Test
  public void canGetRank(){
    assertEquals(card.getRank(), RankType.TWO);
  }
}
