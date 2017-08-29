def longest_sentence(string)
  sentences = string.gsub(/\s/, '')
  sentences =  sentences.split(/[.,!]/)
  longest = 0
  sentences.each { |sent| longest = sent.length if sent.length > longest }
  return longest
end


