import static org.junit.Assert.assertEquals;
import org.junit.*;

public class BearTest{
  Bear bear;
  Salmon salmon;

  @Before 
  public void before() {
    bear = new Bear("Baloo");
    salmon = new Salmon()r;
  }

  @Test
  public void hasName(){
    assertEquals( "Baloo", bear.getName()); 
  }

  @Test
  public void bellyStartsEmpty(){
    assertEquals(0, bear.foodCount());
  }

  @Test
  public void canEatSalmon(){
    bear.eat(salmon);
    assertEquals(1, bear.foodCount());
  }

  @Test
  public void cannotEatSalmonWhenBellyFull(){
    for(int i = 0; i < 6; i++){
      bear.eat(salmon);
    }
    assertEquals(5, bear.foodCount());
  }

  @Test
  public void bellyIsFull(){
    for(int i = 0; i < 5; i++){
      bear.eat(salmon);
    }
    assertEquals(true, bear.bellyFull());
  }

  @Test
  public void bellyIsNotFull(){
    for(int i = 0; i < 4; i++){
      bear.eat(salmon);
    }
    assertEquals(false, bear.bellyFull());
  }

  @Test
  public void shouldEmptyBellyAfterSleeping(){
    bear.eat(salmon);
    assertEquals(1, bear.foodCount());
    bear.sleep();
    assertEquals(0, bear.foodCount());
  }
}
