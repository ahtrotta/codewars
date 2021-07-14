def ip_validator(ip)
  ip.match?(/\A((\d|\d{2}|[01]\d{2}|2[0-4]\d|25[0-5])(\.|\z)){4}\z/)
end

p ip_validator('10.0.0.1') == true
p ip_validator('169.254.0.0') == true
p ip_validator('172.16.0.0') == true
p ip_validator('192.168.0.1') == true
p ip_validator('174.129.25.170') == true
p ip_validator('221.186.184.75') == true
p ip_validator('8.8.8.8') == true
p ip_validator('800.23.09.12') == false
p ip_validator('114.23.54.69.42') == false
p ip_validator('.0.0.1') == false
p ip_validator('.0.0.') == false
p ip_validator('19216801') == false
p ip_validator('Kevin Mitnick IPv7.0') == false
p ip_validator('14.290.11.12') == false
p ip_validator('aa:38:fj:29:jf') == false
p ip_validator('-12.344.43.11') == false
