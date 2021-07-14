def vert_mirror(strng)
  strng.split("\n").map(&:reverse).join("\n")
end

def hor_mirror(strng)
  strng.split("\n").reverse.join("\n")
end

def oper(fct, s)
  fct.call(s)
end


p vert_mirror("hSgdHQ\nHnDMao\nClNNxX\niRvxxH\nbqTVvA\nwvSyRu") == "QHdgSh\noaMDnH\nXxNNlC\nHxxvRi\nAvVTqb\nuRySvw"
p vert_mirror("IzOTWE\nkkbeCM\nWuzZxM\nvDddJw\njiJyHF\nPVHfSx") == "EWTOzI\nMCebkk\nMxZzuW\nwJddDv\nFHyJij\nxSfHVP"
p hor_mirror("lVHt\nJVhv\nCSbg\nyeCt") == "yeCt\nCSbg\nJVhv\nlVHt"
p hor_mirror("njMK\ndbrZ\nLPKo\ncEYz") == "cEYz\nLPKo\ndbrZ\nnjMK"
