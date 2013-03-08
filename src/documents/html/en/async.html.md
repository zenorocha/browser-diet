---
order: 4
title: Try out async and defer
---

To explain how these attributes are useful for better performance, it's better to understand what happens when we don't use them.

<div class="img-left">
  <img id="geek-20" class="icos-geek" src="http://assets.browserdiet.com/img/20.png" alt="Geek #20" width="118" height="275" />
</div>

``` html
<script src="example.js"></script>
```

In this form, the page has to wait for the script to be fully downloaded, parsed and executed before being able to parse and render any following HTML. This can significantly add to the load time of your page. Sometimes this behavior might be desired, but generally not.

``` html
<script async src="example.js"></script>
```

The script is downloaded asynchronously while the rest of the page continues to get parsed. The script is guaranteed to be executed as soon as the download is complete.

``` html
<script defer src="example.js"></script>
```

Just like the example above, the script is downloaded in an asynchronous manner. But it's executed only when the page has been completely parsed.
