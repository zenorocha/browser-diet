---
order: 10
title: Používejte for namísto each
---
Využití nativních funkcí JavaScriptu téměř vždy vede k rychlejšímu provedení než obdoby v JQuery. Z toho důvodu raději než metodu `jQuery.each` používejte nativní `for` smyčku.

Ale pozor na to, že i když je `for in` nativní, v mnoha případech je výkon horší, než `jQuery.each`.


Těžce zkoušená smyčka `for` nám dává další příležitost k urychlení věcí pomocí kešování délky kolekce, přes kterou iterujeme.

```js
for ( var i = 0, len = a.length; i < len; i++ ) {
	e = a[i];
}
```

Použití obráceného `while` a obrácené `for` smyčky je žhavé téma v komunitě a je často citováno jako nejrychlejší forma iterace. Kvůli špatné čitelnosti se ale používá jen výjimečně.

*> [Výsledky na JSPerf](http://jsperf.com/browser-diet-jquery-each-vs-for-loop) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#use-for-instead-of-each)*