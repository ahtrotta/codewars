def DNA_strand(dna)
  arr = dna.chars.map do |base|
    case base
    when 'A'  then 'T'
    when 'T'  then 'A'
    when 'C'  then 'G'
    when 'G'  then 'C'
    end
  end
  arr.join
end

p DNA_strand('AAA')
p DNA_strand('GTAT')
