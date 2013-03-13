---
order: 5
title: Optimize your images
---

Image files contains a lot of information that is useless on the Web. For example, a JPEG photo can have *Exif* metadata from the camera (date, camera model, location, etc.). A PNG contains information about colors, metadata, and sometimes even a miniature embedded thumbnail. None of this is used by the browser and contributes to filesize bloat.

There are tools that exist for image optimization that will remove all this unnecessary data and give you a slimmer file without degrading quality. We say they perform *lossless* compression.

Another way to optimize images is to compress them at the cost of visual quality. We call these *lossy* optimizations.  When you export a JPEG, for example, you can choose the quality level (a number between 0 and 100).  Thinking about performance, always choose the lowest number possible where the visual quality is still acceptable. Another common lossy technique is to reduce the color palette in a PNG or to convert PNG-24 files into PNG-8.

*> Useful **online** tools: [Kraken.io](http://kraken.io), [Smush.it](http://www.smushit.com), [TinyPNG](http://tinypng.org/), and [JPEGmini](http://jpegmini.com/).*

*> Useful **desktop** tools: [ImageOptim](http://imageoptim.com/) (Mac), [RIOT](http://luci.criosweb.ro/riot/download/) (Windows), and [ImageAlpha](http://pngmini.com/) (Mac).*

There are also various commandline tools like *pngout*, *jpegtran*, *gifsicle*, *imgopt*, and more.
