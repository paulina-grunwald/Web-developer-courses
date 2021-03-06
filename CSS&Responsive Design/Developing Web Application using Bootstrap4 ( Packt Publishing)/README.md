# GETTING STARTED WITH BOOTSTRAP 4 FOR WEB DEVELOPMENT

This file includes notes and exercises from [GETTING STARTED WITH BOOTSTRAP 4 FOR WEB DEVELOPMENT](https://www.safaribooksonline.com/library/view/getting-started-with/9781788999113/video1_1.html?autoStart=True)

### Content:
1. Getting Started
2. Creating a Solid Scaffolding
3. Mobile First
4. Making It Fancy
5.


# 1. Getting Started

Bootstrap is one of the best frameworks for building web apps. It speeds up development and maintain coherence of elements used. It supports the most recent versions of the browsers.

Latest Bootstrap version can be found on getboostrap.com. Boostrap4 requires ``<!DOCTYPE html>`` before <html> tag.
Three main tags need to be added at the beginning  of bootstrap in the head. These tags are used for text encoding and visualizaion on the mobile devices. The ``viewport`` is related to the fact that we should design our website first for mobile and by adding it we ensure proper rendering on mobile devices and touch zooming. Zoom functionality can be disabled by adding ``content="user-scalable=no``.

```html
<meta charset="utf-8">
<meta http-equiv="X-UA Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width", initial-scale=1>
```

Below start-up template can be found:

```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width", initial-scale=1>
	<title>Hello World</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
	Hello World!
	<script sr="js/jquery-3.3.1.js" charset="utf-8"></script>
	<script src="js/bootstrap.js" charset="utf-8"></script>
</body>
</html>
```
Now I will continue building first Boostrap example and will use CDN setup. I will add jumbotron element to my page.
``Jumbotron`` is a  flexible component that can optionally extend the entire viewport to showcase key marketing messages on the site.

``.jumbotron-fluid`` - removes rounded corners and makes jumbotron full width (has to be used in combination with .container-fluid or .container)

To create a button we can use following code:
```html
<a class="btn btn-info btn-lg" href="#" role="button">Link</a>
```
If we choose class ``btn-block`` the button will increase width over entire element.

# 2. Creating a Solid Scaffolding

[Bootlint](https://github.com/twbs/bootlint) is a tool that checks for several common HTML mistakes in webpages that are using Bootstrap in a fairly "vanilla" way.

Bootstrap provides headings from h1 to h6.

Bootstrap is based on grid system. In a grid layout, content must be placed within columns and only columns may be immediate children of rows. The grid system adapts for every viewport and resolution.

Example:

```html
<div class="container">
	<div class="row">
		<div class="col-sm-8">col-sm-8</div>
		<div class="col-sm-4">col-sm-4</div>
	</div>
</div>
```


It's also possible to create ``tables`` with Boostrap4. Tables are built from <thread></thread> which is responsible for table header and <tbody></tbody> for storing the content of the table.

```html
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
```

# 3. Mobile First

```html
<div class="col-md-8">
	<img src="https://wkvedu.com/wp-content/uploads/2017/05/3.jpg" class="img-responsive hidden-xs">
	<img src="img/logo.png" class="img-responsive visible-xs">
</div>
```


# REFERENCES
- https://getbootstrap.com/docs/4.0/layout/grid/
- https://wkvedu.com/2017/05/12/5-important-reasons-to-have-good-website-design/
- https://image.freepik.com/free-icon/instagram-logo_318-84939.jpg
- https://bootstraplogos.com/wp-content/uploads/edd/2017/11/logo-44.png
