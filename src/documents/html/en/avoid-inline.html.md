---
order: 27
title: Avoid inline code
---

There are two basic ways for you to include CSS or JavaScript on your page.

**1) Inline:** the CSS is defined inside a `<style>` tag and the JavaScript inside a `<script>` tag.

**2) External:** the CSS is loaded from a `<link>` tag and the JavaScript from the `src` attribute of the `<script>` tag.

The first option, despite reducing the number of HTTP requests, actually increases the size of your HTML document. But this can be useful when you have small assets and the cost of making a request is greater. In this case, run tests to evaluate if there's any actual gains in speed. Also be sure to evaluate the purpose of your page and its audience: if you expect people to only visit it once, for example for some tempororay campaign where you never expect return visitors, inlining code will help in reducing the number of HTTP requests.

*> Avoid manually authoring CSS/JS in the middle of your HTML (automating this process with tools is preferred).*

The second option not only improves the organization of your code, but also makes it possible for the browser to cache it. This option should be preferred for the majority of cases, especially when working with large files and the cost of inlining is larger.

*> Usefull tools: [Assetgraph-builder](https://github.com/One-com/assetgraph-builder).*
