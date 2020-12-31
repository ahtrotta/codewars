def anchorize(text)
  text.gsub(/((http|https|ftp|ftps|file|smb)\S*)/i, '<a href="\1">\1</a>')
end

p '<xmp>'+anchorize('hello http://world.com !')+'</xmp>'
p '<xmp>'+'hello <a href="http://world.com">http://world.com</a> !'+'</xmp>'
