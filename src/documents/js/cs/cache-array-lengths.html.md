---
order: 17
title: Kešujte délku pole
---

Smyčka je nepochybně jedna z nejpodstatnějších částí ovlivňujících výkon JavaScriptu. Zkuste optimalizovat logiku uvnitř smyčky tak, aby každá iterace byla vykonána užitečně.

Jedna z cest, jak toho dosáhnout, je uložit si délku pole, se kterým se pracuje, aby nemusela být opakovaně zjišťována v každé iteraci.

```js
var arr = new Array(1000),
    len, i;

for (i = 0; i < arr.length; i++) {
  // Spatne - velikost musi byt prepocitana 1000x
}

for (i = 0, len = arr.length; i < len; i++) {
  // Dobre - velikost je zjistena jen jednou a ihned ulozena
}
```

*[> Výsledky na JSPerf](http://jsperf.com/browser-diet-cache-array-length/10/)*

**> Poznámka:** *Přestože moderní prohlížeče automaticky optimalizují tento proces, stále je tato doporučovaná technika užitečná pro starší prohlížeče.*

Při iterování přes kolekce v HTML, jako jsou seznamy Nodů (*NodeList*) vytvořené například pomocí volání `document.getElementsByTagName('a')` je celá věc ještě více kritická. Tyto kolekce jsou považovány za "živé" , protože se automaticky aktualizují, když nastane změna v elementu, ke kterému patří.

```js
var links = document.getElementsByTagName('a'),
    len, i;

for (i = 0; i < links.length; i++) {
  // Spatne - pri kazde iteraci dojde k opetovnemu vypoctu delky pole, kdyby se nahodou zmenila
}

for (i = 0, len = links.length; i < len; i++) {
  // Dobre - delka pole je jednou ziskana a ulozena, pote se v iteraci pouziva jen ta predpoctena
}

// Desive: ukazka nekonecne smycky
for (i = 0; i < links.length; i++) {
  document.body.appendChild(document.createElement('a'));
  // Pri kazde iteraci naroste seznam linku, nikdy tak nedojde k naplneni podminky pro ukonceni cyklu
  // to by se nestalo, kdyby se velikost pole predem ulozila do promenne a pak pouzila ve smycce
}
```

*> [Reference](https://github.com/zenorocha/browser-diet/wiki/References#cache-array-lengths)*