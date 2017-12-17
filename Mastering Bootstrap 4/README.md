# Key Learning Points Form Mastering Boostrap 4 course (Published by Packt Publishing, 2017)

## 1. BOOTSTRAP OVERVIEW
- In general __bootstrap__ is a library that you bring to your website and a JavaScript library. It is designed for various devices sizes.
- __DOM__ - Document Object Model. All of the content on the website loads into DOM.
- __CDM__ - Content Delivery Network
- __Boostrap containers__ - Container readjust depending on the size of the screen. There are two types of containers: <em>container</em> and <em>container fluid</em>. Fluid container takes all the available space (100% vide)
 contrainer fluid.
- __Grid system__ is at the core of bootstrap and allows to do responsive web design. It is based on <em>12 col system</em> and <em>media query</em>. New size 'Extra large' was added in the boostrap4. If you want to create two column website you can create two

  ```html
  <div class="container">
    <div class="row">
      <div class="col-xs-6">xs column 1</div>
      <div class="col-xs-6">xs column 2</div>
    </div>
  </div>
  ```
-
- __Booststrap Jumbotrone__ - is used for marketing messages. Example of the code in body:

  ```html
  < div class="col-sm-6 box">
    <div class=jumbotron">
      <h1>Marketing message</h1>
      <p>this is the best product<a
      class="btn btn-primary" href="#">BUY NOW</a></p>
    </div>
  </div>
  ```

- __Boostrap typography__

  ```html
  <div class="row">
			<div class="col-sm-6 box">

		    <!-- This code reverses the quote <blockquote
            class="blockquote blockquote-reverse"> -->

				<blockquote class="blockquote blockquote-reverse">
					<p>This is my quote</p>
					<footer class="blockquote-footer">By Paulina</footer>
				</blockquote>
    ```


## 2. TOOLS AND COMPONENTS

#### Text styles

#### Boostrap Cards

- __A card__ is a flexible and extensible content container. It includes options for headers and footers, a wide variety of content, contextual background colors, and powerful display options.

```html
<div class="card" style="width: 20rem;">
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-block">
    <h4 class="card-title">Card title</h4>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
```
- Cards support a wide variety of content, including images, text, list groups, links, and more. Below are examples of what’s supported.
    - <em>Blocks</em>
    - <em>Titles, text, and links</em>
    - <em>Images</em>
    - <em>List groups</em>
    - <em>Kitchen sink</em>
    - <em>Header and footer</em>

#### Boostrap Images
#### Boostrap Nav
#### Boostr Buttons
#### Boostrap Grouping
#### Boostrap Aligment and Styling
#### Boostrap Other compontents

## Simple Single Page website
- for initial design we can use following website: https://wireframe.cc/

## References:
- https://v4-alpha.getbootstrap.com/layout/grid/
- https://v4-alpha.getbootstrap.com/components/card/
