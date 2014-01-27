---
order: 5
title: Optimalizujte obrázky
---

Soubory obrázků obsahují spoustu informací, které jsou zbytečné na webu. Například JPEG fotka může obsahovat *Exif* metadata z foťáku (datum, typ foťáku, geolokace a pod.). PNG obsahuje informace o barvách, metadata a občas i vložený náhled obrázku. Nic z toho není používáno prohlížečem a zbytečně to nafukuje velikost souboru.

Existují nástroje pro optimalizaci obrázku, které odstraní nepotřebná data a výsledkem je menší soubor i bez ztráty kvality. Říkáme tomu *bezztrátová* komprese.

Další možnost, jak optimalizovat obrázky, je komprese na vrub vizuální kvality. Tomu říkáme *ztrátová* optimalizace. Například, když exportujete JPEG, můžete si zvolit úroveň kvality (číslo mezi 0 a 100). Když jde o výkon, vždy volte nejnižší možné číslo, které stále ještě zachová přijatelnou vizuální podobu. Další běžná ztrátová technika je zredukování barevné palety v PNG nebo konverze PNG-24 na PNG-8.

K vylepšení vjemového výkonu je vhodné převést všechny JPEG soubory na jejich progresivní varianty. Progresivní JPEGy mají skvělou podporu v prohlížečích, je snadné vytvořit je a nemají žádné výkonové nevýhody. Výhodou je, že se obrázek načte na stránce dříve ([viz demo](http://www.patrickmeenan.com/progressive/view.php?img=http://farm2.staticflickr.com/1434/1002257937_021cb46a33_o.jpg)).


*> [Užitečné nástroje](https://github.com/zenorocha/browser-diet/wiki/Tools#optimize-your-images) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#optimize-your-images)*