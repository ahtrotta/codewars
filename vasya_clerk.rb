=begin
ALGORITHM
- initialize bills hash
- iterate through people
  - 

=end

def tickets(people)
  bills = { 25 => 0, 50 => 0 }
  people.each do |bill|
    if bill == 25
      bills[25] += 1
    elsif bill == 50
      if bills[25] == 0
        return 'NO'
      else
        bills[50] += 1
        bills[25] -= 1
      end
    else
      if bills[50] == 0
        if bills[25] < 3
          return 'NO'
        else
          bills[25] -= 3
        end
      else
        if bills[25] < 1
          return 'NO'
        else
          bills[50] -= 1
          bills[25] -= 1
        end
      end
    end
  end
  'YES'
end

p tickets([25, 25, 50])
p tickets([25, 100])
p tickets([25, 25, 50, 50, 100])
