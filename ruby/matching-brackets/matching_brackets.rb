class Brackets
  def self.paired?(input)

    brackets = {
      ")" => "(",
      "}" => "{",
      "]" => "[",
    }

    regex = Regexp.union(brackets.values + brackets.keys)

    stack = []

    input.scan(regex).each do |char|
      if brackets.values.include?(char)
        stack.push(char)
      elsif brackets.keys.include?(char)
        return false if stack.pop != brackets[char]
      end
    end

    stack.empty? ? true : false

  end
end
