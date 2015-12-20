---
order: 17
title: Załaduj zewnętrzny kod asynchronicznie
---

Kto nie używał zewnętrznego kodu do osadzenia wideo z YouTube lub przycisku Like/Tweet?

<div class="img-right">
  <img id="geek-46" class="icos-geek" src="https://browserdiet.com/assets/img/46.png" alt="Geek #46" width="158" height="275" />
</div>

Kod zewnętrzny nie zawsze jest sprawnie dostarczany, czasami przez połączenie użytkownika z internetem, innym ze względu na serwer gdzie jest umieszczony, co często stanowi duży problem. Zdarza się, że usługa bywa nawet tymczasowo niedostępna lub zablokowana przez firewall.

Uniknięcie takiej sytuacji jest ważne, ponieważ krytyczne żądanie spowalnia ładowanie strony, a czasami nawet całkowicie je przerywa. Istotne jest ładowanie takiego kodu asynchronicznie lub poprzez *[przyjazdne ramki](https://www.facebook.com/note.php?note_id=10151176218703920)*.

```js
var script = document.createElement('script'),
    scripts = document.getElementsByTagName('script')[0];
script.async = true;
script.src = url;
scripts.parentNode.insertBefore(script, scripts);
```

Ewentualnie, jeśli chcesz załadować kilka niezależnych wtyczek, możesz asynchronicznie załadować je z pomocą [tego skryptu](https://gist.github.com/zenorocha/5161860).

*> [Wideo](http://www.webpagetest.org/video/view.php?id=111011_4e0708d3caa23b21a798cc01d0fdb7882a735a7d) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#load-3rd-party-content-asynchronously)*
