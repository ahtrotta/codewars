/*



*/

let songDecoder = function (song) {
  return song.replace(/(WUB)+/g, ' ').trim();
}

console.log(songDecoder("AWUBBWUBC"));
console.log(songDecoder("AWUBWUBWUBBWUBWUBWUBC"));
console.log(songDecoder("WUBAWUBBWUBCWUB"));
