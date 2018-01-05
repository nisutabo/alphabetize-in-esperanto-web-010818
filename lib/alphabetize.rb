require "pry"

def alphabetize(arr)
  # code here

  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  hash = {}
  indices_of_uniq_chars = []

  arr.each do |word|
    i = 0
    while i < arr.sort_by{|word| word.length}[0].length
      hash[i] = [] if hash[i] == nil
      hash[i] << word[i]
      i += 1
    end
  end



  hash.each do |key, val|
    if val.uniq.length > 1
      indices_of_uniq_chars << key
    end
  end

  sorted = arr.sort_by{|word| esperanto.index(word[indices_of_uniq_chars.min])}
  sorted

end
