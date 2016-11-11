import static org.junit.Assert.*;
import org.junit.*;
import jewellery.*;

public class RingTest {

  Ring ring;
  
  @Before 
  public void before(){
    ring = new Ring(MetalType.GOLD, GemType.RUBY);
  }

  @Test
  public void canGetMetal(){
    assertEquals(ring.getMetal(), MetalType.GOLD);
  }

  @Test
  public void canGetGem(){
    assertEquals(ring.getGem(), GemType.RUBY);
  }

  @Test
  public void canMakeSimpleRing() {
    Ring simpleRing = new Ring(MetalType.GOLD);
    assertEquals(simpleRing.getMetal(), MetalType.GOLD);
  }
  // @Test
  // public void canBeMisspelled() {
  //   ring = new Ring("Golld");
  //   assertEquals(ring.getMetal(), "Golld");
  // }

  // @Test public void metalCanBeBanana() {
  //   ring = new Ring("Banana");
  //   assertEquals(ring.getMetal(), "Banana");
  // }

}