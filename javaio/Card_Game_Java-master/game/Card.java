package game;
import java.util.*;

public class Card {

  private RankType rank;
  private SuitType suit;

  public Card(SuitType suit, RankType rank) {
    this.rank = rank;
    this.suit = suit;
  }
  
  public SuitType getSuit() {
    return this.suit;
  }

  public RankType getRank() {
    return this.rank;
  }
  
}


