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


// Game variables (at the start of the game)
let gameStarted = false,
    gameOver = false, 
    playerWon = false,
    dealerCards = [],
    playerCards = [],
    dealerScore = 0,
    playerScore = 0,
    desck = [];
    

// Hide hitButton and stayButton (this button needs to be hidden before the game is started)
hitButton.style.display = 'none';
stayButton.style.display = 'none';

//Show current status
showStatus();

// Set up handler for starting new game.   
// When user clicks on new game the game will be started
newGameButton.addEventListener('click', function(){
  //Update game variables
  gameStarted = true;
  gameOver = false;
  playerWon = false;

  // Create new deck of cards
  deck = createDeck();
  shuffleDeck(deck);

  // Give two cards for dealer and player
  dealerCards = [ getNextCard(), getNextCard() ];
  playerCards = [ getNextCard(), getNextCard() ];

  textArea.innerText = 'Started...';
  newGameButton.style.display = 'none'
  hitButton.style.display = 'inline';
  stayButton.style.display = 'inline';
  showStatus();
});

// Create deck function
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

function shuffleDeck(deck){
  for (let i = 0; i < deck.length; i++){
    // Calc index of the card we want to swap
    let swapIdx = Math.strunc(Math.random() * deck.length);
    //Set temporary to temp
    let tmp = deck[swapIdx]
    deck[swapIdx] = deck[i]
    deck[i] = temp;
  }
}

// Print out name of given card
function getCardString(card) {
  return card.value + ' of ' + card.suit;
}


// Show status
function showStatus() {
  // If game is not started then assign new string to textArea
  if (!gameStarted) {
    textArea.innerText = 'Welcome to Blackjack!'
    return
  }
  // Give cards to the dealer
  let dealerCardString = '';


  // Give cards to the player
  let playerCardString =  '';

  textArea.innerText = 

  updateScores();

}

// Get next card from the deck
function getNextCard() {
  return deck.shift();
}



// Create deck
let deck = createDeck();

// Assign first two cards to the player 
let playerCards = [ getNextCard(), getNextCard() ];

console.log("Welcome to Blackjack!")
console.log("You are dealt: ");
console.log("  " + getCardString(playerCards[0]));
console.log("  " + getCardString(playerCards[1]));





