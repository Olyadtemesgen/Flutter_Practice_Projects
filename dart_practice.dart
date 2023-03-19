void main(){
    var deck = new Deck();
    print(deck.cardsFilterer("Diamonds"));
   
}
class Deck{
    List<Card> cards = [];

    Deck(){
        var ranks = ["Three", "Four", "A", "One", "Two", "Five"];
        var suits = ["Diamonds", "Hearts", "Clubs", "Spades"];
        
        for (var rank in ranks){
            
            for (var suit in suits){
                var card = new Card(rank, suit);
                cards.add(card);
            }
        }
    }
    
    toString(){
        return "Jesus Is Lord" + cards.toString();
    }
    shuffler(){
        cards.shuffle();
    }
    cardsFilterer(String suit){
        return cards.where((card) {
            return card.suit == suit;
        });
    }

}

class Card{
    
    String rank;
    String suit;
    Card (this.rank, this.suit);
    toString(){
    return this.rank  + " of "  + this.suit;
    }
}
