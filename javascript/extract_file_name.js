let extractFileName = function (dirtyFileName) {
  let match = dirtyFileName.match(/^\d+_([-\w]+\.\w+)\.\w+/);
  return match[1];
}

console.log(extractFileName("1_FILE_NAME.EXTENSION.OTHEREXTENSIONadasdassdassds34"));
console.log(extractFileName("1231231223123131_FILE_NAME.EXTENSION.OTHEREXTENSION"));
