---
ignored: true
order: 11
title: Use GET for AJAX Requests
---

The [Yahoo! Mail](http://mail.yahoo.com) team found that when using XMLHttpRequest, POST is implemented in the browsers as a two-step process: sending the headers first, then sending data. So it's best to use GET, which only takes one TCP packet to send (unless you have a lot of cookies). The maximum URL length in IE is 2K, so if you send more than 2K data you might not be able to use GET.

An interesting side affect is that POST without actually posting any data behaves like GET. Based on the [HTTP specs](http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html), GET is meant for retrieving information, so it makes sense (semantically) to use GET when you're only requesting data, as opposed to sending data to be stored server-side.

With vanilla javascript:

```js
function reqListener () {
  console.log(this.responseText);
};
 
var oReq = new XMLHttpRequest();
oReq.onload = reqListener;
// oReq.open("post", "yourFile.txt", true); // Bad
oReq.open("get", "yourFile.txt", true); // Good
oReq.send();
```

With jQuery:

```js
$.ajax({
	url: 'yourFile.txt',
	// type: 'POST', // Bad
	type: 'GET', // Good
	success: function(data, status, jqXHR) {
	},
	error: function(jqXHR, status, errorThrown) {
	}
});
```
