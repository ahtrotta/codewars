def check_password(s)
  s.match?(/\A[a-z\d!@#$%\^&*?]{8,20}\z/) ? 'valid' : 'not valid'
end
