#def check_password(s)
#  good = (s.match?(/[a-z]+/) && s.match?(/[A-Z]+/) && s.match?(/\d+/) &&
#    s.match?(/[!@#$%\^&*?]+/) && s.match?(/\A[a-z\d!@#$%\^&*?]{8,20}\z/i))
#  good ? 'valid' : 'not valid'
#end

# practicing with lookaheads
def check_password(s)
  s.match?(/\A(?=.*[a-z])(?=.*[A-Z])(?=.*[\d])(?=.*[!@#$%\^&*?])[a-zA-Z\d!@#$%\^&*?]{8,20}\z/) ? 'valid' : 'not valid'
end

p check_password("") == "not valid"
p check_password("password") == "not valid"
p check_password("P1@p") == "not valid"
p check_password("P1@pP1@p") == "valid"
p check_password("P1@pP1@pP1@pP1@pP1@pP1@p") == "not valid"
p check_password("Paaaaaa222!!!") == "valid"
