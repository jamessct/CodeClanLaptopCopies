package wizard_management;

public class Wizard {
  private String name;
  private Flyable garage;

  public Wizard(String name, Flyable garage){
    this.name = name;
    this.garage = garage;
  }

  public String getName(){
    return this.name;
  }

  public Broomstick getBroomstick(){
    return this.garage;
  }

  public Dragon getDragon(){
    return this.garage;
  }

  public String fly(){
    return this.garage.fly();
  }

}