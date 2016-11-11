package game;
import java.util.*;

public class Deck {

  private ArrayList<Card> deck;

  public Deck() {
    this.deck = new ArrayList<Card>();
  }

  public void createFullDeck() {
    for (SuitType suit : SuitType.values() ) {
      for(RankType rank : RankType.values() ) {
        deck.add(new Card(suit, rank));
      }
    }
  }

  public void addCard(Card card) {
    deck.add(card);
  }

  public int cardCount() {
    return deck.size();
  }

  public void shuffle() {
      Collections.shuffle(this.deck); 
  }

  public void dealCard() {
    Card card = deck.remove(0);
  }

}
