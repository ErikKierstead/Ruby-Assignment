module Palindrome

    String.class_eval do
        def palindrome?
            self.gsub!(/[\W\d]/, "")
            #puts self.downcase + " == " + self.downcase.reverse + ": "
            return self.downcase == self.downcase.reverse
        end
    end

    Enumerable.class_eval do
#   Array.class_eval do
        def palindrome?
            return self == self.reverse
        end
    end

end

p "lol".palindrome?
p [1,2,3].palindrome?
p [3,2,3].palindrome?
p ["test", "blah", "test"].palindrome?
