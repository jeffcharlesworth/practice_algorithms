def anagram(word1, word2)
  word1_hash = {}
  word2_hash = {}

  word1.chars.each { |char| word1_hash[char] ? word1_hash[char] += 1 : word1_hash[char] = 1 }
  word2.chars.each { |char| word2_hash[char] ? word2_hash[char] += 1 : word2_hash[char] = 1 }

  word1_hash == word2_hash ? 1 : 0
end
