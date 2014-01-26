---
order: 14
title: Vyhněte se zbytečným manimulacím v DOM
---

Pokaždé, když sahnete na DOM zbytečně, jedno koťátko zemře.

Vážně, průchod DOMem je nákladný. I přes to, že jsou dnes JavaScriptové enginy výrazně rychlejší a vykonnější, vždy se snažte optimalizovat dotazy nad DOM.

Jedna z nejužitečnějších rad zní: když přistupujete k elementu více než jedenkrát, uložte si jej do proměnné, ať se nemusíte dotazovat DOMu vícekrát.

```js
// opravdu spatne!
for (var i = 0; i < 100; i++) {
  document.getElementById("myList").innerHTML += "<span>" + i + "</span>";
}
```

```js
// mnohem lepsi :)
var myList = "";

for (var i = 0; i < 100; i++) {
  myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

```js
// mnohem mnohem lepsi :)
var myListHTML = document.getElementById("myList").innerHTML;

for (var i = 0; i < 100; i++) {
  myListHTML += "<span>" + i + "</span>";
}
```
*> [Výsledky na JSPerf](http://jsperf.com/browser-diet-dom-manipulation/11)*
