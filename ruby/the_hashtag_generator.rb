def generateHashtag(str)
  out = str.split.map(&:capitalize).join
  if out.empty?
    false
  elsif out.length > 139
    false
  else
    '#' + out
  end
end
