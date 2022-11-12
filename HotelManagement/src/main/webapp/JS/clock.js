setInterval(displayClock, 500);
function displayClock() {
  var time = new Date();
  var hours = time.getHours();
  var min = time.getMinutes();
  var sec = time.getSeconds();
  var en = "AM";

  if (hours > 12) {
    en = "PM";
  }

  if (hours > 12) {
    hours = hours - 12;
  }

  if (hours == 0) {
    hours = 12;
  }

  if (hours < 10) {
    hours = "0" + hours;
  }

  if (min < 10) {
    min = "0" + min;
  }

  if (sec < 10) {
    sec = "0" + sec;
  }

  document.getElementById("clock").innerHTML = hours + ":" + min + ":" + sec + ":" + en;
}
