/* CSS animation of superman background uses too many CPU resources.
   Let's stop the animation if superman leaves the viewport. */

var imageElement = document.getElementById("superman-raios");
var handler = elementVisibilityMayChange(imageElement);

if (window.addEventListener) { // modern browsers
    addEventListener('scroll', handler, false);
    addEventListener('resize', handler, false);
} else if (window.attachEvent) {  // MSIE 5-8
    attachEvent('scroll', handler);
    attachEvent('resize', handler);
}

function elementVisibilityMayChange(el) {
    return function () {
        if (isElementInViewport(el)) {
            changeAnimationState(el, "running");
        } else {
            changeAnimationState(el, "paused");
        }
    }
}

function isElementInViewport(el) {
    var rect = el.getBoundingClientRect();

    return rect.bottom > 0 &&
        rect.right > 0 &&
        rect.left < (window.innerWidth || document. documentElement.clientWidth) &&
        rect.top < (window.innerHeight || document. documentElement.clientHeight);
}

function changeAnimationState(el, state) {
    el.style["animation-play-state"] = state;
    el.style["-webkit-animation-play-state"] = state;
}
