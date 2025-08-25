let icon = document.getElementById("icon")
let musicZelda = document.getElementById("zelda")
musicZelda.volume = 0.1;

icon.addEventListener("click", function() {
    if (musicZelda.paused) {
        musicZelda.currentTime = 0
        musicZelda.play();
        icon.classList.add("playing")
    } else {
        musicZelda.pause();
        icon.classList.remove("playing")
    }
});