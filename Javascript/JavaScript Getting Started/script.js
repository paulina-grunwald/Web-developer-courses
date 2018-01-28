// Blackjack game code



// Card variables
let suits = ['Hearts', 'Clubs', 'Diamonds', 'Spades'];

let values = ['Ace', 'King', 'Queen', 'Jack', 'Ten',
              'Nine', 'Eight', 'Seven', 'Six', 'Five',
              'Four', 'Three', 'Two'];


// DOM variables
let textArea = document.getElementById('text-area'),
    newGameButton = document.getElementById('new-game-button'),
    hitButton = document.getElementById('hit-button'),
    stayButton = document.getElementById('stay-button');

// Hide hitButton and stayButton (this button needs to be hidden before the game is started)
hitButton.style.display = 'none';
stayButton.style.display = 'none';

//Set up handler for starting new game

newGameButton.addEventListener('click', function(){
  textArea.innerText = 'Started...';
  newGameButton.style.display = 'none'
  hitButton.style.display = 'inline';
  stayButton.style.display = 'inline';
});

//Create deck function
function createDeck() {
  let deck = [];
  // Loop through the suits
  for (let suitIdx = 0; suitIdx < suits.length; suitIdx++) {
    // Loop through the values
    for (let valueIdx = 0; valueIdx < values.length; valueIdx++){
      let card = {
        suit: suits[suitIdx],
        value: values[valueIdx]
      };
      deck.push(card);
    }
  }
  // Return cards from the deck
  return deck;
}


// Get next card from the deck
function getNextCard() {
  return deck.shift();
}


// Print out name of given card
function getCardString(card) {
  return card.value + ' of ' + card.suit;
}


// Create deck
let deck = createDeck();

// Assign first two cards to the player 
let playerCards = [ getNextCard(), getNextCard() ];

console.log("Welcome to Blackjack!")
console.log("You are dealt: ");
console.log("  " + getCardString(playerCards[0]));
console.log("  " + getCardString(playerCards[1]));





