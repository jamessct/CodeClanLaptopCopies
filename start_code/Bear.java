import java.util.*;
class Bear{

  private String name;
  private ArrayList<Edible> belly;

  public Bear(String name){
    this.name = name;
    this.belly = new ArrayList<Edible>();
    // this.belly = new Salmon[5];
  }

  public String getName(){
    return this.name;
  }

  public int foodCount(){
    return belly.size();
  }

  // public int foodCount(){
    // int counter = 0;

  //   for(Salmon salmon : belly){
  //     if(salmon != null){
  //       counter++;
  //     }
  //   }
  //   return counter;
  // }

  public void eat(Edible food){
    belly.add(food);
  }

  // public void eat(Salmon salmon){
  //   if(bellyFull()) return;
  //   int foodCount = foodCount();
  //   belly[foodCount] = salmon;
  // }

  public void sleep(){
    belly.clear();
  }

  // public boolean bellyFull(){
  //   return foodCount() == belly.length;
  // }

  // public void sleep(){
  //   for(int i = 0; i < belly.length; i++){
  //     belly[i] = null;
  //   }
  // }

  public Edible throwUp() {
    if(foodCount() > 0) {
      return belly.remove(0);
    }
    return null;
  }

  public int totalNutrition() {
    int total = 0;

    for(Edible food : belly) {
    total += food.nutritionalClass();
    }
    return total;
  }
}