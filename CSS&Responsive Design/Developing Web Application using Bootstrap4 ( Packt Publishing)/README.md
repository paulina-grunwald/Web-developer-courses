# GETTING STARTED WITH BOOTSTRAP 4 FOR WEB DEVELOPMENT

This file includes notes and exercises from [GETTING STARTED WITH BOOTSTRAP 4 FOR WEB DEVELOPMENT](https://www.safaribooksonline.com/library/view/getting-started-with/9781788999113/video1_1.html?autoStart=True)

### Content:
1. Getting Started
2. Creating a Solid Scaffolding
3. Mobile First
4. Making It Fancy
5.


# 1. Getting Started

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



# REFERENCES
