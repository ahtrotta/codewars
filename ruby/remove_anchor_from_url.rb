def remove_url_anchor(url)
  url[/(.*(?=[#])|.*)/]
end

p remove_url_anchor("www.codewars.com#about") == "www.codewars.com"
p remove_url_anchor("www.codewars.com/katas/?page=1#about") == "www.codewars.com/katas/?page=1"
p remove_url_anchor("www.codewars.com/katas/") == "www.codewars.com/katas/"
