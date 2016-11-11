import static org.junit.Assert.*;
import org.junit.*;
import card_game.*;

public class CardTest {

  Card card;
  
  @Before 
  public void before(){
    card = new Card(RankType.THREE, SuitType.CLUBS);
  }

  @Test
  public void canGetSuit(){
    assertEquals(card.getSuit(), SuitType.CLUBS);
  }

  @Test
  public void canGetRank(){
    assertEquals(card.getRank(), RankType.THREE);
  }

  // @Test // obsolete
  // public void canGetValue(){
  //   assertEquals(card.getRank().getValue(), 3);
  // }

  @Test
  public void canGetValueDirect() {
    assertEquals(card.getValue(), 3);
  }

  @Test
  public void canGetPrettyName() {
    assertEquals("Three of Clubs", card.getPrettyName() );
  }

}