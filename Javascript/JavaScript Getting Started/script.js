// Blackjack game code


// Card variables
let suits = ['Hearts', 'Clubs', 'Diamonds', 'Spades'];

let values = ['Ace', 'King', 'Queen', 'Jack', 'Ten',
              'Nine', 'Eight', 'Seven', 'Six', Five,
              'Four', 'Three', 'Two'];


// DOM variables
let textArea = document.getElementById('text-area'),
    newGameButton = document.getElementById('new-game-button'),
    hitButton = document.getElementById('hit-button'),
    stayButton = document.getElementById('stay-button');




//Create deck function
function createDeck() {
  let deck = [];
  // Loop through the suits
  for (let suitIdx = 0; suitIdx < suits.length; suitIdx++) {
    // Loop through the values
    for (let valueIdx = 0; valueIdx < values.length; valueIdx++){
      let card = {
        suit: suit[suitIdx],
        value: values[valueIdx]
      };
      deck.push(card);
    }
  }
  // Return cards from the deck
  return deck;
}
