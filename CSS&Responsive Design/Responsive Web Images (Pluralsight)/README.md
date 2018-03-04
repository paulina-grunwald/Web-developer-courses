# Key Learning notes from [Responsive Web Images](https://app.pluralsight.com/library/courses/responsive-web-images/table-of-contents)

Content:
1. What Are Responsive Web Images?
2. Image Types
3. Responsive Image Techniques
4. Maximizing Performance


# 1. What Are Responsive Web Images?

Responsible Web Images techniques provide the most appropriate image for the design and device

| Raster                                      | Vector                       |
| :------------------------------------------ | :--------------------------- |
| Rectangular grid of single color pixels     | Mathematical equations       |
| Specific width and height                   | Zoom or scale without loss   |    
| Photos                                      | Logos, Icons                 |
| jpeg, gif, png, webp                        | svg                          |

Raster images are the best displayed in their original size. On the other hand using vector images we can zoom or scale without any loss - that is not possible with raster image.


# 2. Image types

# 3. Responsive Image Techniques
There are few most popular used cases for responsive images:
- Resolution-based selection
- Art direction
- Device-pixel-ratio-based selection
- Image types



#### Resolution-based selection
In this case we will focus on same image being displayed on various devices with different resolutions.

The source attribute can only reference one image at the time. We can  use ``{max-width:100%}`` when we have responsive, fluid design because we want the image to stay constrained within it's parent container. This also means the image will scale eg. be responsive when the window is resized.
``{width:100%}`` can be used if an img is smaller than the parent element than the rule will stretch it to the full width of its parent.

Javascript can also be helpful in making sure that the images present on the website are responsive. By using ``"data-"`` attribute we can point to different URLs for various image sizes. This is mostly linked with the width of the image.


# REFERENCES
- https://teamtreehouse.com/community/help-with-maxwidth-100-for-img
- https://www.impressivewebs.com/width-100-percent-css/
