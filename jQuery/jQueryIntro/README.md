
# Key Learning Points from [jQuery Fundamentals](https://app.pluralsight.com/library/courses/jquery-fundamentals/table-of-contents)



### Content:
1. jQuery Fundamentals
2. Using jQuery Selectors
3. Interacting with the DOM
4. Handling Events
5. Working with Ajax Features

# jQuery Fundamentals

jQuery is represented by single file and work cross-browser. It allows to select things in the DOM and manipulate them and has rich event infrastructure. jQuery supports Ajax. Moreover, there are many plugins for jQuery which will make development much faster.

jQuery ``.ready()`` function can detect when a page has loaded.
Use ``$(document).ready()`` to detect when a page has loaded (DOM hierarchy but before all images have loaded) and it is ready to use.

```javascript
<script type="text/javascript">
  $(document).ready(function(){
    //Perform an action
  });
</script>
```

To manipulate the DOM with jQuery we can select HTML element with # e.g $('#content')

[jQuery documention](https://api.jquery.com/)

# Using jQuery Selectors

Selector is a way to select node from the DOM. It is possible to select multiple or single elements.

Node can be selected by using $. e.g

````javascript
$(document).ready(function (){
  // find all the span tags
  var spans = $('span');
  alert(spans.length);
)};
````

``.prop( propertyName )`` - Get the value of a property for the first element in the set of matched elements.

#### Select Nodes by Tag Name

In order to select element by its ID we can use ``#`` sign. e.g ``$('#myID')``. It selects e.g <p id="myID"> element.

````JavaScript
// Select element by id
alert($("#heading").html());
// change color of id=Heading
$('#heading').css('background-color', 'Yellow');
````

#### Selecting Nodes by Class Name
e.g ```$('.myClass')```.

In order to select element by its class we can use ``.`` character.

It is also possible to search for multiple tags (we need to use ``,`` to separate the class names. It is also possible to combine element's name with the selement's ID.
e.g ''$('a.myClass')``.

#### Selecting Nodes by Attribute Value


#### Selecting Input Nodes


To select all input elements we can use```$(':input')```. This will select input, select, textarea, button, image , radio and more.


#### Additional Selector Features
- ``:contains()`` will select elements that match the contents within the contains exceptions: ```JavaScript $('div:contains("Button")')```.
This will result in selecting divs that contain the text Button (its case sensitive)

# Interacting with the DOM
# Handling Events
# Working with Ajax Features
