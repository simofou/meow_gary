//Js function to add dynamic COVID banner

var dismissibleBanner = function(el, value) {

  var html = '<span>' + value + ' <button type="button" class="close">X</button></span>';

  el.removeAttribute('data-component');
  el.removeAttribute('data-value');

  el.classList.add('dismissible-banner');

  el.innerHTML = html;

  el.querySelector('.close').addEventListener('click', function(event){
    var height = el.offsetHeight,
      opacity = 1,
      timeout = null;
    function reduceHeight() {
      height -= 2;
      el.setAttribute('style', 'height: ' + height + 'px; opacity: ' + opacity);
      if (height <= 0) {
        window.clearInterval(timeout) ;
        timeout = null;
        el.remove();
      }
    }
    function fade() {
      opacity -= .1;
      el.setAttribute('style', 'opacity: ' + opacity);
      if (opacity <= 0) {
        window.clearInterval(timeout);
        timeout = window.setInterval(reduceHeight, 1);
      }
    }
    timeout = window.setInterval(fade, 25);
  });

};

var dismissible_banner = document.querySelector('[data-component="dismissible-banner"]')
    value = dismissible_banner.getAttribute('data-value');

new dismissibleBanner(dismissible_banner, value)
