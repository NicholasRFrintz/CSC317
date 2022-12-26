function fadeAndCount() {

var div = document.querySelector(".fade");
var btn = document.querySelector(".fadeButton");
btn.addEventListener("click", function(){
  div.classList.add("FadeOut");
  // Wait until the animation is over and then remove the class, so that
  // the next click can re-add it.
  setTimeout(function(){div.classList.remove("FadeOut");}, 4000);
});
.fade{
    width:200px;
    height: 200px;
    background: red;
    opacity:0;
}

.FadeOut {
    animation: fadeOut 2s linear forwards;
}

@keyframes fadeOut {
 0% { opacity:1; }
 50% { opacity:0.5; } 
 100% { opacity:0; } 
}

}