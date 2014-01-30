---
order: 5
title: keep-alive
---

Every HTTP request requires a "TCP" connection established so that there is communication between the client and server.

Establish a "TCP" connection is a costly and time consuming process (due to the "three-way handshake"), so it is very important that we reclaim newly created TCP connections to transit other HTTP requests for the same "tunnel".

This setting is called keep-alive.

The configuration is specific to servers. On Apache, for example, you can edit `htaccess`, with these lines:

```
<IfModule mod_headers.c>
  Header set Connection keep-alive
</IfModule>
```

*> [References](https://github.com/cleberdantas/browser-diet/wiki/References#wiki-keep-alive)*
