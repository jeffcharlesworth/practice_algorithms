module Parser
  def self.balanced?(string)
    stack = []
    bracket_key = {
      '}' => '{',
      ']' => '[',
      ')' => '('
    }
    open_brackets = ['(', '[', '{']
    closed_brackets = [')', ']', '}']

    string.chars.each do |char|
      if open_brackets.include?(char)
        stack.push(char)
      elsif closed_brackets.include?(char) && bracket_key[char] == stack.last
        stack.pop()
      elsif closed_brackets.include?(char) && bracket_key[char] != stack.last
        return 0
      end
    end
    stack.length > 0 ? 0 : 1
  end
end
