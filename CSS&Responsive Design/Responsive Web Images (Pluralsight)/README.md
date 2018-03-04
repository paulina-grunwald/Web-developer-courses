# Key Learning notes from [Responsive Web Images](https://app.pluralsight.com/library/courses/responsive-web-images/table-of-contents)

### Content:
1. What Are Responsive Web Images?
2. Image Types
3. Responsive Image Techniques
4. Maximizing Performance


# 1. What Are Responsive Web Images?
The size of the webpages grown over past year so taking this into consideration it's very important to focus on use proper use of images (which consist of 63% of all the pages) on the website. Responsible Web Images techniques provide the most appropriate image for the design and device.

# 2. Image types

| Raster                                      | Vector                       |
| :------------------------------------------ | :--------------------------- |
| Rectangular grid of single color pixels     | Mathematical equations       |
| Specific width and height                   | Zoom or scale without loss   |    
| Photos                                      | Logos, Icons                 |
| jpeg, gif, png, webp                        | svg                          |


Raster images are the best displayed in their original size. You should not try to scale them. On the other hand using vector images we can zoom or scale without any loss - that is not possible with raster image.

``Fiddler`` is a tool that allows to see traffic between the browser and the web server.

#### JPG
JPG is the best format for photos that can be used on the websites. It uses lossy compression (ability to trade quality vs size). Progressive jpgs will paint the entire image fuzzy first and then bring more details. That means user doesn't have to wait to download the whole image but will have right away outline of the image displayed on the page.

#### GIF
Gif is a raster image that has 8 bits (256 colors). It uses lossless compression. It usually used for animation. Generally, if we have png and jpg of the same size it is recommended to use jpg as png will be much larger in size. They are used mostly if we need image with transparent background.

#### PNG

PNG gas 8-32 bits and can be uses lossless or lossy compression.

### SVG
SVG is xml vector image format. It is build from points, lines and shapes and it is resolution independent.

### Other Raster Alternatives
- Icon fonts (e.g font awesome)
- Web Fonts (e.g google fonts)
- CSS3 (e.g use of gradients)

In CSS we can use grandients that were not available before. Example of code that allows us to use gradients:
```html
<head>
  <style type="text/css">
    .grad1
    {
        height: 100px;
        background: linear-gradient(to bottom,  #f00, #fff);
    }
  </style>
</head>
```

# 3. Responsive Image Techniques
There are few most popular used cases for responsive images:
- Resolution-based selection,
- Art direction,
- Device-pixel-ratio-based selection,
- Image types.

``Resolution-based selection``:
- uses same image to devices with different resolutions,
- low resolution devices avoid wasting bandwidth.




#### Resolution-based selection
In this case we will focus on same image being displayed on various devices with different resolutions.

The source attribute can only reference one image at the time. We can  use ``{max-width:100%}`` when we have responsive, fluid design because we want the image to stay constrained within it's parent container. This also means the image will scale eg. be responsive when the window is resized.
``{width:100%}`` can be used if an img is smaller than the parent element than the rule will stretch it to the full width of its parent.

Javascript can also be helpful in making sure that the images present on the website are responsive. By using ``"data-"`` attribute we can point to different URLs for various image sizes. This is mostly linked with the width of the image.


Good website for using correct image sizes: http://www.responsivebreakpoints.com/


# 4. Maximizing Performance

Lazy loading: only downloads images visible in the viewport


# REFERENCES
- https://teamtreehouse.com/community/help-with-maxwidth-100-for-img
- https://www.impressivewebs.com/width-100-percent-css/
