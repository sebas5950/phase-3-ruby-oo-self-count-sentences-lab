require 'pry'

class String

  def sentence?
    if self.chars[-1] == "."
      return true
    else 
      false
    end
  end

  def question?
      if self.chars[-1] == "?"
        return true
      else 
        false
      end
    end
 
  def exclamation?
    if self.chars[-1] == "!"
      return true
    else 
      false
    end
  end

  def count_sentences
    count = 0
    self.each_char do |char|
      if char == "!" || char == "?" || char == "." || char == "..."
        count += 1
      end
    end
    return count
  end
  binding.pry
end

