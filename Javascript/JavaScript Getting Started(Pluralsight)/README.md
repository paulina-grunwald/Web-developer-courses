# Blackjack Game
> Written by Paulina Grunwald

Creating Blackjack game was am assigment of [Pluralsight JavaScript: Getting Started course.](https://app.pluralsight.com/library/courses/javascript-getting-started/table-of-contents)

The game can be viewed using this [link]().


### Stages of game creation

1. Create two array - suits and values. Suits array will include 5 suits of cards:

```javascript
let suits = ['Hearts', 'Clubs', 'Diamonds', 'Spades'];
```
and values for those cards (those will range from Ace to Two):

```javascript
let values = ['Ace', 'King', 'Queen', 'Jack', 'Ten',
              'Nine', 'Eight', 'Seven', 'Six', 'Five',
              'Four', 'Three', 'Two'];
```

Then I have initialized deck to the empty array:

```javascript
deck = [];
```
2. Use for loop to create deck of cards.
We will use Idx as shortening of Index

```javascript
// Loop through the suits
for(let suitIdx = 0; suitIdx < suits.length; suitIdx++){
// Loop through the values
  for (let valueIdx = 0; valueIdx < values.length; valueIdx++) {
    deck.push(values[valueIdx] + ' of ' + suits[suitIdx]);
  }
}

for (let i = 0; i < deck.length; i++){
  console.log(deck[i]);
}

let playerCards = [deck[0], deck[2]];

```

3. Add createDeck function

We will add previously created for loops and add them to the createDeck() function.

```javascript
function createDeck(){
  // Create empty array for the deck
  let deck = [];
  for(let suitIdx = 0; suitIdx < suits.length; suitIdx++){
  // Loop through the values
    for (let valueIdx = 0; valueIdx < values.length; valueIdx++) {
      deck.push(values[valueIdx] + ' of ' + suits[suitIdx]);
    }
  }
  // Return cards in the deck
  return deck;
}
```

4. Create function getNextCard()

```javascript
function getNextCard(){
  return deck.shift
}
```

###### <em>Side Note - .shift() method</em>

The ```shift()``` method removes the first element from an array and returns that removed element. This method changes the length of the array.
e.g

```javascript
var array1 = [1, 2, 3];

var firstElement = array1.shift();

console.log(array1);
// expected output: Array [2, 3]

console.log(firstElement);
// expected output: 1
```

5. Change items in the playerCards
Now we will change array items in the playerCards.

```javascript

let playerCards = [getNextCard, getNextCard];
```

4. Add objects to the game
Instead storing the card name as a long string we have save it as an object.

```javascript
let card = {
  suit: suits[suitIdx],
  values: values[valueIdx]
};
```
Now instead of our deck to be collection of long string it's an array of objects that have suit and value.



6. Create function getCardString

```javascript
function getCardString(card) {
  return card.value
}

```


7. Linking script.js with the index.html

__DOM__ - Document Object Model: defines how the data of the web page is organized and manipulated.

Create index.html file with custom text and few buttons. Link script.js file with index.html.

#### Side Note
In Html we would create a paragraph:

```html
<p id="text-area">Custom text</p>
```
In order to access this paragraph in javascript we need to create new variable in which we use special object on which we use .getElementById. In .getEelementById function we pass a name of the object we want to retrieve.


```javascript
let paragraph = document.getElement('text-area')
// Execute variable
paragraph.innerText = "This is paragraph";

paragraph.style.display = 'none'; //remove it
paragraph.style.display = 'block'; //add it back
```


Now we need to add buttons to the index.html file:

```Html
<button id="new-game-button">New Game</button>
<button id="hit-button">Hit</button>
<button id="stay-button">Stay</button>
```
and add DOM variables to the script.js:

```javascript
// DOM variables
let textArea = document.getElementById('text-area'),
    newGameButton = document.getElementById('new-game-button'),
    hitButton = document.getElementById('hit-button'),
    stayButton = document.getElementById('stay-button');

```

8.


10. Shuffle deck of Cards

```javascript
function shuffleDeck(deck){
  for (let i = 0; i < deck.length; i++){
    // Calc index of the card we want to swap
    let swapIdx = Math.strunc(Math.random() * deck.length);
    let tmp = deck[swapIdx]
    deck[swapIdx] = deck[i]
    deck[i] = temp;
  }
}

```


# REFERENCES:

- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/shift
