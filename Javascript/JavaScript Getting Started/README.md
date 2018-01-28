# Blackjack Game
> Written by Paulina Grunwald

Creating Blackjack game was am assigment of [Pluralsight JavaScript: Getting Started course.](https://app.pluralsight.com/library/courses/javascript-getting-started/table-of-contents)

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

3. Add functions to the game


3.
