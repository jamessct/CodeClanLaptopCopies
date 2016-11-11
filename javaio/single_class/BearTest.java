import static org.junit.Assert.assertEquals;
import org.junit.*;

public class BearTest {

  Bear bear;

  @Before
  public void before(){
    bear = new Bear("Berny", 10, 95.6, 3.5);
  }

  @Test
  public void hasName(){
    assertEquals("Berny", bear.getName());
  }

  @Test
  public void hasAge(){
    assertEquals(10, bear.getAge());
  }

  @Test
  public void hasWeight(){
    assertEquals(95.6, bear.getWeight(), 0.01);
  }

  @Test
  public void readyToHibernateIfBMI8(){
    assertEquals(false, bear.readyToHibernate());
  }

  @Test
  public void notReadyToHibernateIfLessThan80(){
    Bear thinBear = new Bear("Winnie", 15, 60.2, 2.7);
    assertEquals(true, thinBear.readyToHibernate());
  }

  @Test
  public void hasHeight(){
    assertEquals(3.5, bear.getHeight(), 0.01);
  }

  @Test
  public void hasBMI(){
    assertEquals(7.804, bear.getBMI(), 0.001);
  }
}




// java annotation; begins with @