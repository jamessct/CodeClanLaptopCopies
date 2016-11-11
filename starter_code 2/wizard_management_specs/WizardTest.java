import static org.junit.Assert.*;
import org.junit.*;
import wizard_management.*;

public class WizardTest {

  Wizard wizard;
  Broomstick broomstick;
  Dragon dragon;

  @Before
  public void before(){
    broomstick = new Broomstick("Nimbus", 10);
    dragon = new Dragon("Puff");
    wizard = new Wizard("Toby", broomstick, dragon);
  }

  @Test
  public void hasName(){
    assertEquals("Toby", wizard.getName());
  }

  @Test
  public void hasBroomstick(){
    assertEquals("Nimbus", wizard.getBroomstick().getBrand());
  }

  @Test
  public void hasDragon(){
    assertEquals("Puff", wizard.getDragon().getName());
  }

  @Test
  public void canFlyBroomstick(){
    assertEquals(wizard.fly(),"mounting broom, running, skipping, flying!");
  }

 
}