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

# REFERENCES:

- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/shift
