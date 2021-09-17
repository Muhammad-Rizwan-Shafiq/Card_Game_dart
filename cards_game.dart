void main(){
  var deck=Deck();
  
  
  
  
  deck.removeCard('Diamonds','Two');
  print(deck);
}

class Deck{
  List <Card> cards=[];
  
  Deck(){
    var ranks=['Ace','Two','Three','Four','Five'];
    var suits=['Diamonds','Hearts','Clubs','Spades'];
    
    for(var suit in suits){
      for(var rank in ranks){
        var card = Card(rank,suit);
        cards.add(card);
      }
    }
  }
   toString(){
     return cards.toString();
   }
  
  shuffle(){
    cards.shuffle();
  }
  
  cardsWithSuit(String suit){
   return cards.where((card){
      return card.suit== suit;
    });
  }
  
  deal(int handSize){
    var hand=cards.sublist(0,handSize);
    cards=cards.sublist(handSize);
    return hand;
  }
  
  removeCard(String suit,String rank){
   cards.removeWhere((card){
     return (card.rank ==rank) && (card.suit == suit);
   });
  }
  
}

class Card{
  String rank;
  String suit;
  
  Card(this.rank,this.suit);
  
  toString(){
    return '${rank} of ${suit}';
  }
}
