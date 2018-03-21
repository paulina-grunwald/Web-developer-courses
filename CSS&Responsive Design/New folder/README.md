# Key Learning notes from [Hands-on Responsive Web Design 1: Media Queries & CSS Preprocessing](https://app.pluralsight.com/library/courses/responsive-web-design-media-queries-css-preprocessing/table-of-contents)


##### Media Query
- CSS Reset: No media Query
- Small screens rules: No Media Query
- Medium Screen rules:
```javascript
@media screen and (min-width: 500px){
  // rules here
}
```
- Large screen rules:
```javascript
@media screen and (min-width: 1140px){
  // rules here
}
```


``Way finding`` is a very important concept in the web design. User should know at all times on which part of the page he is right now.  This can be accomplished by using company logo on all the pages or activated menu will help with way finding.

#### CSS Preprocessor Setup

CSS Preprocessor allows us to write the CSS faster and minify it. Actually, it will combine multiple ``SCSS`` files into one ``CSS`` that will be linked with the HTML. Steps to create CSS prepocessor:
- create scss folder
- change name of partial files to ``_filename.scss`` and place them in scss folder
- - create styles.scss and import there all partial files:
```javascript
@import "reset";
@import "small-default";
@import "medium";
@import "large";
```
- using [Koala App](http://koala-app.com/) compile all .scss file into styles.css and place the file in css folder.
- Each time you make a change in  partial files you need to recompile or set option "autocompile" so it will be done automatically
- Move media queries from the partial files to ``_styles.scss``:

``` javascript
@import "reset";

@import "variables";

@import "small-default";

@media only screen and (min-width: 560px) {
    @import "medium";    
} // end media query

@media only screen and (min-width: 1140px) {
    @import "large";
} // end media query
```

### SAS and CSS
In _variable.css we can set up global variables e.g

``` javascript
$primaryCOlor :#424e64;
$font-color: #424e67;
```

Now we can use those variables on our pages e.g
``html
header {
  background-color: $primaryColor;
}
``

If we want to push the items from the left or right side we can use padding:
```html
padding: 1rem 2%;
```

``line-height`` attribute can be used to space out lines of text.

# REFERENCES
- http://koala-app.com/
