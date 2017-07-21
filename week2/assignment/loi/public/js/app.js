!function(e,t){"function"==typeof define&&define.amd?define([],t):"object"==typeof exports?module.exports=t():e.sortable=t()}(this,function(){"use strict";function e(e,t,n){var r=null;return 0===t?e:function(){var a=n||this,o=arguments;clearTimeout(r),r=setTimeout(function(){e.apply(a,o)},t)}}var t,n,r=[],a=[],o=function(e,t,n){return void 0===n?e&&e.h5s&&e.h5s.data&&e.h5s.data[t]:(e.h5s=e.h5s||{},e.h5s.data=e.h5s.data||{},e.h5s.data[t]=n,void 0)},i=function(e){e.h5s&&delete e.h5s.data},s=function(e,t){return(e.matches||e.matchesSelector||e.msMatchesSelector||e.mozMatchesSelector||e.webkitMatchesSelector||e.oMatchesSelector).call(e,t)},l=function(e,t){if(!t)return Array.prototype.slice.call(e);for(var n=[],r=0;r<e.length;++r)"string"==typeof t&&s(e[r],t)&&n.push(e[r]),t.indexOf(e[r])!==-1&&n.push(e[r]);return n},d=function(e,t,n){if(e instanceof Array)for(var r=0;r<e.length;++r)d(e[r],t,n);else e.addEventListener(t,n),e.h5s=e.h5s||{},e.h5s.events=e.h5s.events||{},e.h5s.events[t]=n},c=function(e,t){if(e instanceof Array)for(var n=0;n<e.length;++n)c(e[n],t);else e.h5s&&e.h5s.events&&e.h5s.events[t]&&(e.removeEventListener(t,e.h5s.events[t]),delete e.h5s.events[t])},f=function(e,t,n){if(e instanceof Array)for(var r=0;r<e.length;++r)f(e[r],t,n);else e.setAttribute(t,n)},u=function(e,t){if(e instanceof Array)for(var n=0;n<e.length;++n)u(e[n],t);else e.removeAttribute(t)},p=function(e){var t=e.getClientRects()[0];return{left:t.left+window.scrollX,top:t.top+window.scrollY}},h=function(e){c(e,"dragstart"),c(e,"dragend"),c(e,"selectstart"),c(e,"dragover"),c(e,"dragenter"),c(e,"drop")},g=function(e){c(e,"dragover"),c(e,"dragenter"),c(e,"drop")},m=function(e,t){e.dataTransfer.effectAllowed="move",e.dataTransfer.setData("text",""),e.dataTransfer.setDragImage&&e.dataTransfer.setDragImage(t.draggedItem,t.x,t.y)},v=function(e,t){return t.x||(t.x=parseInt(e.pageX-p(t.draggedItem).left)),t.y||(t.y=parseInt(e.pageY-p(t.draggedItem).top)),t},y=function(e){return{draggedItem:e}},b=function(e,t){var n=y(t);n=v(e,n),m(e,n)},E=function(e){i(e),u(e,"aria-dropeffect")},x=function(e){u(e,"aria-grabbed"),u(e,"draggable"),u(e,"role")},w=function(e,t){return e===t||void 0!==o(e,"connectWith")&&o(e,"connectWith")===o(t,"connectWith")},I=function(e,t){var n,r=[];if(!t)return e;for(var a=0;a<e.length;++a)n=e[a].querySelectorAll(t),r=r.concat(Array.prototype.slice.call(n));return r},C=function(e){var t=o(e,"opts")||{},n=l(z(e),t.items),r=I(n,t.handle);g(e),E(e),c(r,"mousedown"),h(n),x(n)},A=function(e){var t=o(e,"opts"),n=l(z(e),t.items),r=I(n,t.handle);f(e,"aria-dropeffect","move"),o(e,"_disabled","false"),f(r,"draggable","true");var a=(document||window.document).createElement("span");"function"!=typeof a.dragDrop||t.disableIEFix||d(r,"mousedown",function(){if(n.indexOf(this)!==-1)this.dragDrop();else{for(var e=this.parentElement;n.indexOf(e)===-1;)e=e.parentElement;e.dragDrop()}})},S=function(e){var t=o(e,"opts"),n=l(z(e),t.items),r=I(n,t.handle);f(e,"aria-dropeffect","none"),o(e,"_disabled","true"),f(r,"draggable","false"),c(r,"mousedown")},D=function(e){var t=o(e,"opts"),n=l(z(e),t.items),r=I(n,t.handle);o(e,"_disabled","false"),h(n),c(r,"mousedown"),g(e)},L=function(e){return e.parentElement?Array.prototype.indexOf.call(e.parentElement.children,e):0},O=function(e){return!!e.parentNode},T=function(e,t){if("string"!=typeof e)return e;var n=document.createElement(t);return n.innerHTML=e,n.firstChild},W=function(e,t){e.parentElement.insertBefore(t,e)},M=function(e,t){e.parentElement.insertBefore(t,e.nextElementSibling)},N=function(e){e.parentNode&&e.parentNode.removeChild(e)},P=function(e,t){var n=document.createEvent("Event");return t&&(n.detail=t),n.initEvent(e,!1,!0),n},_=function(e,t){a.forEach(function(n){w(e,n)&&n.dispatchEvent(t)})},z=function(e){return e.children},Y=function(e){var t=l(z(e),o(e,"items"));return t},q=function(i,c){var u=String(c);if(c=function(e){var t={connectWith:!1,placeholder:null,disableIEFix:!1,placeholderClass:"sortable-placeholder",draggingClass:"sortable-dragging",hoverClass:!1,debounce:0,maxItems:0};for(var n in e)t[n]=e[n];return t}(c),c&&"function"==typeof c.getChildren&&(z=c.getChildren),"string"==typeof i&&(i=document.querySelectorAll(i)),i instanceof window.Element&&(i=[i]),i=Array.prototype.slice.call(i),/serialize/.test(u)){var h=[];return i.forEach(function(e){h.push({list:e,children:Y(e)})}),h}return i.forEach(function(i){if(/enable|disable|destroy/.test(u))return q[u](i);c=o(i,"opts")||c,o(i,"opts",c),D(i);var h,g,m,v,y=l(z(i),c.items),E=c.placeholder;if(E||(E=document.createElement(/^ul|ol$/i.test(i.tagName)?"li":"div")),E=T(E,i.tagName),E.classList.add.apply(E.classList,c.placeholderClass.split(" ")),!i.getAttribute("data-sortable-id")){var x=a.length;a[x]=i,f(i,"data-sortable-id",x),f(y,"data-item-sortable-id",x)}if(o(i,"items",c.items),r.push(E),c.connectWith&&o(i,"connectWith",c.connectWith),A(i),f(y,"role","option"),f(y,"aria-grabbed","false"),c.hoverClass){var I="sortable-over";"string"==typeof c.hoverClass&&(I=c.hoverClass),d(y,"mouseenter",function(){this.classList.add(I)}),d(y,"mouseleave",function(){this.classList.remove(I)})}c.maxItems&&"number"==typeof c.maxItems&&(v=c.maxItems),d(y,"dragstart",function(e){e.stopImmediatePropagation(),c.handle&&!s(e.target,c.handle)||"false"===this.getAttribute("draggable")||(b(e,this),this.classList.add(c.draggingClass),t=this,f(t,"aria-grabbed","true"),h=L(t),n=parseInt(window.getComputedStyle(t).height),g=this.parentElement,m=Y(g),_(i,P("sortstart",{item:t,placeholder:E,startparent:g})))}),d(y,"dragend",function(){var e;t&&(t.classList.remove(c.draggingClass),f(t,"aria-grabbed","false"),t.style.display=t.oldDisplay,delete t.oldDisplay,r.forEach(N),e=this.parentElement,_(i,P("sortstop",{item:t,startparent:g})),h===L(t)&&g===e||_(i,P("sortupdate",{item:t,index:l(z(e),o(e,"items")).indexOf(t),oldindex:y.indexOf(t),elementIndex:L(t),oldElementIndex:h,startparent:g,endparent:e,newEndList:Y(e),newStartList:Y(g),oldStartList:m})),t=null,n=null)}),d([i,E],"drop",function(e){var n;w(i,t.parentElement)&&(e.preventDefault(),e.stopPropagation(),n=r.filter(O)[0],M(n,t),t.dispatchEvent(P("dragend")))});var C=e(function(e,a){if(t)if(y.indexOf(e)!==-1){var o=parseInt(window.getComputedStyle(e).height),i=L(E),s=L(e);if(c.forcePlaceholderSize&&(E.style.height=n+"px"),o>n){var d=o-n,f=p(e).top;if(i<s&&a<f+d)return;if(i>s&&a>f+o-d)return}void 0===t.oldDisplay&&(t.oldDisplay=t.style.display),"none"!==t.style.display&&(t.style.display="none"),i<s?M(e,E):W(e,E),r.filter(function(e){return e!==E}).forEach(N)}else r.indexOf(e)!==-1||l(z(e),c.items).length||(r.forEach(N),e.appendChild(E))},c.debounce),S=function(e){t&&w(i,t.parentElement)&&"true"!==o(i,"_disabled")&&(v&&l(z(i),o(i,"items")).length>=v||(e.preventDefault(),e.stopPropagation(),e.dataTransfer.dropEffect="move",C(this,e.pageY)))};d(y.concat(i),"dragover",S),d(y.concat(i),"dragenter",S)}),i};return q.destroy=function(e){C(e)},q.enable=function(e){A(e)},q.disable=function(e){S(e)},q});
//# sourceMappingURL=html.sortable.min.js.map
sortable(".js-sortable")