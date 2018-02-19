# Key Learning Points from [Intro to jQuery](https://classroom.udacity.com/courses/ud245)

# Table of content
1. The Basics: the DOM, $ and Selectors
2. The Tricks: DOM Manipulation
3. Event Listeners with jQuery

# The Basics: the DOM, $ and Selectors
$ - > jQuery Collection (like an array but include additional methods)

jQuery is a function and an object.

We can pass various item to the jQuery:
$(string)
$(function)
$(DOM Element)
$.ajax()

They are called selectors.

We can use jQuery to select a part of the DOM:

``
$('tag') - tag selector
$('.class') - class selector
$('#id') - if selector
``

Select all green classes:

```javascript
all_green = $('.green');
```

### Family Tree Revisited
$('#name').__parent()__ <em>Goes single +1 level in the tree</em>

$('#name')__.parents()__ <em>Goes to the top of the DOM tree</em>

.$('#name')__.children()__ <em>Goes single level -1</em>

$('#name')__.find()__ <em>Goes to the bottom of the tree</em>

$('#name')__.siblings()__ <em>jQuery collection of the all signlings of the same parent.</em>

# The Tricks: DOM Manipulation


.addClass(className)- Adds the specified class(es) to each element in the set of matched elements

Add blue class to the element with the id of item:
```javascript
$('#item').addClass('blue')
```

.toggleClass(className) - Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the state argument.

```javascript
/*
For this quiz, use a jQuery class selector and featuredArticle variable to toggle the 'featured' class!
*/

// don't change this variable!
var featuredArticle;

featuredArticle = $('.featured').toggleClass('featured');
```

.next() - Get the immediately following sibling of each element in the set of matched elements. If a selector is provided, it retrieves the next sibling only if it matches that selector.


.attr( attributeName ) - Get the value of an attribute for the first element in the set of matched elements.

```javascript
/*
For this quiz, set the href of the <a> in the first nav item to "#1".

You must use jQuery's attr() method!
*/

// Start with this variable!
var navList;
navList = $('.nav-list');
// find first children
firstItem = navList.children().first()
// find 'a'
link = firstItem.find('a');
// add href and set it to #1
link.attr('href', '#1');
```


# Event Listeners with jQuery







# REFERENCES
- http://api.jquery.com/category/selectors/
