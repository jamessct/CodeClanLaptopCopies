import static org.junit.Assert.*;
import org.junit.*;
import game.*;

public class PlayerTest {

  Player player;
  Hand hand;

  @Before 
  public void before(){
    player = new Player("Hannah");
    hand = new Hand();
  }

  @Test
  public void hasName(){
    assertEquals( "Hannah", player.getName() ); 
  }

}