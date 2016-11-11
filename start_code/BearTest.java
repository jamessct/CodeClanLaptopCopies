import static org.junit.Assert.*;
import org.junit.*;

public class BearTest{
  Bear bear;
  Salmon salmon;
  Human human;
  Chicken chicken;

  @Before 
  public void before() {
    bear = new Bear("Baloo");
    salmon = new Salmon(); 
    human = new Human();
    chicken = new Chicken();
  }

  @Test
  public void hasName(){
    assertEquals( "Baloo", bear.getName() ); 
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
  public void shouldEmptyBellyAfterSleeping(){
    bear.eat(salmon);
    bear.eat(human);
    bear.sleep();
    assertEquals(bear.foodCount(), 0);
  }

  @Test
  public void canEatHuman() {
    bear.eat(human);
    assertEquals(1, bear.foodCount());
  }

  @Test
  public void canEatChicken() {
    bear.eat(chicken);
    assertEquals(1, bear.foodCount());
  }

  @Test
  public void canThrowUp() {
    bear.eat(chicken);
    Edible food = bear.throwUp();
    Chicken original = (Chicken)food;
    // assertNotNull(foood);
    // foood.cluck();
    assertEquals("cluck cluck cluck", original.cluck());
  }

  @Test
  public void totalNutrition() {
    bear.eat(salmon);
    bear.eat(chicken);
    bear.eat(human);
    assertEquals(143, bear.totalNutrition());
  }

}
  // @Test
  // public void canThrowUpChicken() {
  //   bear.eat(chicken)
  // }