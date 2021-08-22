/*


*/

let domainName = function (url) {
  let match = url.match(/((https*:\/\/)*(www\.)*)*([^\.]+)\./i);
  return match[4]
}

console.log(domainName("http://google.com"));
console.log(domainName("http://google.co.jp"));
console.log(domainName("www.xakep.ru"));
console.log(domainName("https://youtube.com"));
