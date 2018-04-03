
# Key Learning Points from [jQuery Fundamentals](https://app.pluralsight.com/library/courses/jquery-fundamentals/table-of-contents)



### Content:
1. jQuery Fundamentals
2. Using jQuery Selectors
3. Interacting with the DOM
4. Handling Events
5. Working with Ajax Features

# jQuery Fundamentals

jQuery is represented by single file and work cross-browser. It allows to select things in the DOM and manipulate them and has rich event infrastructure. jQuery supports Ajax. Moreover, there are many plugins for jQuery which will make development much faster.

jQuery ``.ready()`` function can detect when a page has loaded. Use ``$(document).ready()`` to detect when a page has loaded (DOM hierarchy but before all images have loaded) and it is ready to use.

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

In order to select element by its ID we can use ``#`` sign. e.g ```JavasSript $('#myID')```. It selects e.g <p id="myID"> element.

````JavaScript
// Select element by id
alert($("#heading").html());
// change color of id=Heading
$('#heading').css('background-color', 'Yellow');
````


#### Selecting Nodes by Class Name
e.g
````JavaScript
$('.myClass')````

In order to select element by its class we can use ``.`` character.

It is also possible to search for multiple tags (we need to use ``,`` to separate the class names. It is also possible to combine elements name with the element names.

````javascript
$('a.myClass')
````


#### Selecting Nodes by Attribute Value
In order to select attribute we need to use brackerts ``[attribute]`` e.g

````javascript
$('a[title]')

$('a[title = "Coding"]')
````

#### Selecting Input Nodes

To select all input elements we can use ``
$(':input')``. This will select input, select, textarea, button, image , radio and more.

This code:

````javaScript
$(':input[type="radio"]')
````
targets all radio buttons on the page.

This code gets the first value from the input:

````javascript
var inputs = $(':input');
alert($(inputs[1]).val());
````

If we want to find all inputs in the specifc form we can find it using ID
````javascript
$('#form1 :input').each(function () {
  var elem = $(this);
  alert(elem.val());
});
````

Below code will select all the inputs and inject value Foo.

````javascript
$(':input').each(function() {
  var elem = $(this);
  alert(elem.val('Foo'));
});
````


#### Additional Selector Features

Additional selectors help to select elements e.g depending on text they contain or attributes they start or end with.

- ``:contains()`` will select elements that match the contents within the contains exceptions e.g

  ````JavaScript
$('div:contains("Button")')````
This will result in selecting divs that contain the text Button (its case sensitive)


- ``$('tr:odd')`` and  ``$('tr:even')`` can be used to select odd or even rows in a table.

- ``$('element:first-child')`` can be used to select the first child of every element group e.g
  ````JavaScript
``$('span:first-child')``

-  ``[attribute^="value"]`` can be used to select elements with an attribute that begins with stated value e.g ``$('input[value^="Events"]')``. ``[attribute$="value"]`` will select elements with an attribute that ends with the stated value and ``[attribute*="value"]`` elements with an attribute that contains stated value.



[JQuery selectors documentation can be found here](http://api.jquery.com/category/selectors/)




# Interacting with the DOM


# Handling Events
- Events notify program that a user performed some type of action.



# Working with Ajax Features


# Interacting with the DOM
