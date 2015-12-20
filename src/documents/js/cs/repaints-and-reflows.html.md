---
order: 14
title: Minimalizujte Repaints a Reflows
---

Repaints a reflows se vyskytují v případě, že existuje proces překreslující DOM, když se změní nějaká vlastnost elementu.

Repaint je spuštěn v případě, že se změní vzhled elementu bez toho, aby se změnil jeho layout. Nicole Sullivan jako příklad uvádí změnu stylů, třeba `background-color`.

Reflow je mnohem nákladnější, protože je způsoben změnou layoutu stránky, jako je například změna šířky elementu.

Není pochyb, že je dobré se těmto náročným repaints a reflows vyhnout, takže například místo tohoto:

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="https://browserdiet.com/assets/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = div.offsetWidth + 'px';
}
```

zkuste toto:

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    widthToSet = div.offsetWidth,
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = widthToSet + 'px';
}
```

Když nastavíte `style.width`, prohlížeč musí přepočítat layout. Obvykle je několik změn stylů elementů spojeno do jednoho reflow, protože to prohlížeč nemusí řešit, dokud nedojde k aktualizaci obrazovky. Každopádně  v prvním příkladě jsme používali `offsetWidth`, což je šířka layoutu elementu, prohlížeč tedy musí přepočítat layout.

Pokud potřebujete číst data layoutu ze stránky, udělejte tak naráz - předtím, než začnete nastavovat cokoliv, co mění layout, jak je ukázáno v druhém příkladě.

*> [Demo](http://jsbin.com/aqavin/2/quiet) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#minimize-repaints-and-reflows)*
