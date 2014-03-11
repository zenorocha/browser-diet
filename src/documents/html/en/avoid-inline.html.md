---
order: 26
title: Avoid inline/embedded code
---

There are three basic ways for you to include CSS or JavaScript on your page:

**1) Inline:** the CSS is defined inside a `style` attribute and the JavaScript inside an `onclick` attribute for example, in any HTML tag;

**2) Embedded:** the CSS is defined inside a `<style>` tag and the JavaScript inside a `<script>` tag;

**3) External:** the CSS is loaded from a `<link>` and the JavaScript from the `src` attribute of the `<script>` tag.

The first two options, despite reducing the number of HTTP requests, actually increase the size of your HTML document. But this can be useful when you have small assets and the cost of making a request is greater. In this case, run tests to evaluate if there's any actual gains in speed. Also be sure to evaluate the purpose of your page and its audience: if you expect people to only visit it once, for example for some temporary campaign where you never expect return visitors, inlining/embedded code will help in reducing the number of HTTP requests.

*> Avoid manually authoring CSS/JS in the middle of your HTML (automating this process with tools is preferred).*

The third option not only improves the organization of your code, but also makes it possible for the browser to cache it. This option should be preferred for the majority of cases, especially when working with large files and lots of pages.

*> [Useful tools](https://github.com/zenorocha/browser-diet/wiki/Tools#wiki-avoid-inlineembedded-code) / [References](https://github.com/zenorocha/browser-diet/wiki/References#avoid-inlineembedded-code)*
