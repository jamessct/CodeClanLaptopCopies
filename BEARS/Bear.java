public abstract class Bear {

  public abstract void gatherFood();

  public void roar(){
    System.out.println("roar!");
  }

// a template design pattern that utilises open/closed principle
// investigate 'Factory' design pattern
  public void typicalDay(){
    wakeUp();
    gatherFood();
    eat();
    sleep();
  }

  public void wakeUp(){
    System.out.println("Waking up");
  }

  public void eat(){
    System.out.println("yum");
  }

  public void sleep(){
    System.out.println("z");
  }
  

}