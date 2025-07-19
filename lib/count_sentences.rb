require 'pry'

class String

  def sentence?
    self .end_with?(".")
  end

  def question?
    self .end_with?("?")
  end

  def exclamation?
    self .end_with?("!")
  end

   def count_sentences
     parts = self.split(".").flat_map { |s| s.split("!") }.flat_map { |s| s.split("?") }

     parts.reject { |part| part.strip.empty? }.count
   end
 end
