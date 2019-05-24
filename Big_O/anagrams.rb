
#O(n!)
def first_anagram?(word1, word2)
  ana = word1.split("").permutation.to_a
  ana.each do |word|
    return true if word.join("") == word2
  end
  false
end

# p first_anagram?("gizmo", "sally")
# p first_anagram?("elvis", "lives")

# O (n^2)
def second_anagram?(word1, word2)
  chars2 = word2.chars

  word1.chars.each do |char|
    if chars2.include?(char)
      target = chars2.index(char)
      chars2[target] = ""
    end
  end
  chars2.join("").empty?
end

# p second_anagram?("gizmo", "sally")
# p second_anagram?("elvis", "lives")

# O (n log n)
def third_anagram?(word1, word2)
 word1.chars.sort == word2.chars.sort

end
# p third_anagram?("gizmo", "sally")
# p third_anagram?("elvis", "lives")


#O (n)
def forth_anagram?(word1, word2)
  counter(word1) == counter(word2)
end

def counter(word)
  hash = Hash.new(0)
  word.each_char do |char|
    hash[char]+=1
  end
  hash
end
#  p forth_anagram?("gizmo", "sally")
#  p forth_anagram?("elvis", "lives")

# O (n^2)
def forth_anagram2?(word1, word2)
  hash = counter(word1) 
  chars = word2.chars

  chars.each do |char|
    if hash.has_key?(char)
      hash[char] -= 1
    end
  end
  hash.values.all? {|v| v == 0}
end


  p forth_anagram2?("gizmo", "sally")
 p forth_anagram2?("elvis", "lives")