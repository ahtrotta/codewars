#def validate_pin(pin)
#  pin.match?(/(\A\d{4}\z|\A\d{6}\z)/)
#end

# better solution
def validate_pin(pin)
  pin.match?(/\A\d{4}(\d{2})?\z/)
end

p validate_pin("") ==false
p validate_pin("1") ==false
p validate_pin("1111") ==true
p validate_pin("123456") ==true
p validate_pin("1234567890") ==false
p validate_pin("12") ==false
