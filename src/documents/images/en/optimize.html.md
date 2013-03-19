---
order: 5
title: Optimize your images
---

Image files contains a lot of information that is useless on the Web. For example, a JPEG photo can have *Exif* metadata from the camera (date, camera model, location, etc.). A PNG contains information about colors, metadata, and sometimes even a miniature embedded thumbnail. None of this is used by the browser and contributes to filesize bloat.

There are tools that exist for image optimization that will remove all this unnecessary data and give you a slimmer file without degrading quality. We say they perform *lossless* compression.

Another way to optimize images is to compress them at the cost of visual quality. We call these *lossy* optimizations.  When you export a JPEG, for example, you can choose the quality level (a number between 0 and 100).  Thinking about performance, always choose the lowest number possible where the visual quality is still acceptable. Another common lossy technique is to reduce the color palette in a PNG or to convert PNG-24 files into PNG-8.

To improve user perceived performance, you should also transform all your JPEG files in progressive ones. Progressive JPEGs have great browser support, are very simple to create and have no significant performance penalty. The upside is that the image will appear sooner on the page ([see demo](http://www.patrickmeenan.com/progressive/view.php?img=http://farm2.staticflickr.com/1434/1002257937_021cb46a33_o.jpg)).

*> [Useful tools](https://github.com/zenorocha/browser-diet/wiki/Tools#optimize-your-images) / [References](https://github.com/zenorocha/browser-diet/wiki/References#optimize-your-images)*