public class Bear {

  private String name;
  private int age;
  private double weight; 
  private double height;

  public Bear(String name, int age, double weight, double height) {
    this.name = name;
    this.age = age;
    this.weight = weight;
    this.height = height;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String newName) {
    this.name = newName;
  }

  public int getAge(){
    return this.age;
  }

  public double getWeight(){
    return this.weight;
  }

  public boolean readyToHibernate(){
    return getBMI() >= 8.0;
  }

  public double getHeight(){
    return this.height;
  }

  public double getBMI(){
    return this.weight/(this.height*this.height);
  }
}

// everything public by default