# input
#   - string of names
#     - first name separated from last name by colon
#     - names separated by semicolons
#
# output
#   - string of names
#     - first name separated from last name by comma and space
#     - last name comes first
#     - names in parentheses
#     - sorted by last name
#       - if last names are the same, sort by first name
#
# algorithm
#   - split string on semicolon to generate array of strings
#   - split each name on colon to get array of first and last name
#   - sort the array by the string from joining last and first name
#   - iterate through array and format the string according to rules above

def meeting(s)
  names = s.downcase.split(';').map { |name| name.split(':') }.sort do |a, b|
    if a[1] == b[1]
      a[0] <=> b[0]
    else
      a[1] <=> b[1]
    end
  end
  names.map { |name| "(#{name[1].upcase}, #{name[0].upcase})" }.join
end

s1 = "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill"
s2 = "Alexis:Wahl;John:Bell;Victoria:Schwarz;Abba:Dorny;Grace:Meta;Ann:Arno;Madison:STAN;Alex:Cornwell;Lewis:Kern;Megan:Stan;Alex:Korn"
s3 = "Jacob:Kern;Anna:Arno;Lewis:Steve;Emily:Dorries;Ann:Dorny;Megan:Cornwell;James:Wahl;Grace:Arno;Matthew:Russel;Sarah:Burroughs;Ann:Russell;John:Tolkien"

p meeting(s3)
