Key learning points from [REDUX fundamentals course by Pluralsight](https://app.pluralsight.com/player?course=redux-fundamentals&author=jamis-charles&name=redux-fundamentals-m2&clip=1&mode=live)


1. Introduction
2. React


1. Introduction
Redux is an JS Library that helpts to organize data in single web applications.

``Pure functions`` - relies only on the argumans passed in not on the global variables e.g

```javascript
function add(x,y) {
	return x + y;
};

add(1,2);
// 3
```

``Immutability`` - state of various items in the objects will be saved e.g

```javascript
var state = {color: 'red', anima: 'dog', nums: 6};
var state2 = Object.assign({}, state, {points: 32}});
```

# 2. React
