// Blackjack Game

/* Blackjack, also known as twenty-one, is a comparing card game between usually several players and a dealer,
where each player in turn competes against the dealer,
but players do not play against each other. It is played with one or more decks of 52 cards,
and is the most widely played casino banking game in the world. */

// Create suits array
let suits = ['Hearts', 'Clubs', 'Diamonds', 'Spades'];

// Create values array
let values = ['Ace', 'King', 'Queen', 'Jack', 'Ten',
              'Nine', 'Eight', 'Seven', 'Six', 'Five',
              'Four', 'Three', 'Two'];

// Create DOM variables
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
newGameButton.addEventListener('click', function() {
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
  newGameButton.style.display = 'none';
  hitButton.style.display = 'inline';
  stayButton.style.display = 'inline';
  showStatus();
});

// Add event listener for hitButton
hitButton.addEventListener('click', function() {
  playerCards.push(getNextCard());
  checkForEndOfGame();
  showStatus();
});

// Add event listener for stayButton
stayButton.addEventListener('click', function() {
  gameOver = true;
  checkForEndOfGame();
  showStatus();
});

/*
Create deck function
This function creates deck of card by looping over suits and values and
creating 52 combinations. Each created combination is added to the empty deck.
*/

function createDeck() {
  // Create empty array for deck
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


// Get next card from the deck and shift all the deck
function getNextCard() {
  return deck.shift();
}


function getCardNumericValue(card) {
  switch(card.value) {
    case 'Ace':
      return 1;
    case 'Two':
      return 2;
    case 'Three':
      return 3;
    case 'Four':
      return 4;
    case 'Five':
      return 5;
    case 'Six':
      return 6;
    case 'Seven':
      return 7;
    case 'Eight':
      return 8;
    case 'Nine':
      return 9;
    default:
      return 10;
  }
}

function getScore(cardArray){
  let score = 0;
  lethasAce = false;
  for (let i =0; i < cardArray.length; i++) {
    let card = cardArray[i];
    score+= getCardNumericValue(card);
    if (card.value = 'Ace') {
      hasAce = true;
    }
  }
  if (hasAce && score + 10 <= 21) {
    return score + 10;
  }
  return score;
}


// Function for updating scores
function updateScores() {
  dealerScore = getScore(dealerCards);
  playerScore = getScore(playerCards);
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
  for (let i=0; i < dealerCards.length; i++) {
    dealerCardString += getCardString(dealerCards[i]) + '\n';
}

  let playerCardString = '';
  for (let i=0; i < playerCards.length; i++) {
    playerCardString += getCardString(playerCards[i]) + '\n';
}

  updateScores();

  textArea.innerText =
    'Dealer has:\n' +
    dealerCardString +
    '(score:)' + dealerScore + ')\n\n'; +
    'Player has\n' +
    playerCardString +
    '(score:' + playerScore + ')\n\n';

  if (gameOver) {
    if(playerWon) {
      text.Area.innerText += "You Win!";
    }
    else {
      textArea.innerText += "Dealer wins!";
    }
    newGameButton.style.display = 'inline';
    hitButton.style.display = 'none';
    stayButton.style.display = 'none'
  }
}
