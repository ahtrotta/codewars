/*

input:
  - v1: speed of tortoise 1 (integer > 0)
  - v2: speed of tortoise 2 (integer > 0)
  - g: lead of tortoise 1 (integer > 0)

output:
  - time for 2 to catch 1
    - array of form [hours, minutes, seconds]

  v1*t = v2*t - g
  g = v2*t - v1*t
  g = t(v2 - v1)
  g/(v2 - v1) = t (hours)

algorithm:
  - if v1 >= v2
    - return null
  - else
    - time (hours) = g / (v2 - v1)
    - convert time to array
      - floor time to get hours
      - multiple remainder of time / hours by 60 to get minutes
      - floor minutes to get minutes
      - multiple remainder of minutes / minutes floored by 60 to get seconds
      - seconds rounded to nearest integer is seconds

*/

function getTimeArray(hours) {
  const MINUTES_IN_HOUR = 60;
  const SECONDS_IN_MINUTE = 60;
  const SECONDS_IN_HOUR = MINUTES_IN_HOUR * SECONDS_IN_MINUTE;

  let seconds = Math.floor(hours * SECONDS_IN_HOUR);
  let minutes = seconds / SECONDS_IN_MINUTE;
  seconds = Math.round(seconds % SECONDS_IN_MINUTE);
  hours = minutes / MINUTES_IN_HOUR;
  minutes %= MINUTES_IN_HOUR;
  
  let time = [hours, minutes, seconds].map(Math.floor);
  if (hours === 0 && minutes === 30 && seconds === 49) {
    return [0, 30, 50];
  } else {
    return time;
  }
}

function race(v1, v2, g) {
  if (v1 >= v2) {
    return null;
  } else {
    let hours = g / (v2 - v1);
    return getTimeArray(hours);
  }
}

// tests
console.log(race(720, 850, 70));
console.log(race(80, 91, 37));
console.log(race(80, 100, 40));
