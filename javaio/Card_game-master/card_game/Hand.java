package card_game;
import java.util.*;

public class Hand extends Pack {

  private ArrayList<Card> hand;

  public Hand(){
    this.hand = super.pack;
  }

  public void dealCard(Card card) {
    hand.add(card);
  }

  public int getScore() {
    int total = 0;
    for (Card card : hand){
      total += card.getValue();
    } 
    return total;
  }

  public String outputCardNames() {
    String output = "";
    for(Card card : hand) {
      output += card.getFullCardName;
      output += ". ";
    }
    return output;
  }
}