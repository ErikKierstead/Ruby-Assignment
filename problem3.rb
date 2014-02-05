def count_words(string)

   countHash = {}
   
   #CLeans String of Non Lowercase Letters and Splits String into Array:
   cleanedArray = string.downcase.gsub(/[^a-zA-Z ]/,"").split(" ")

   #Steps through Array: Adds 1 to Existing Keys or Adds Key starting at 1:
   cleanedArray.each do |i|
      if(countHash.has_key?(i)) 
         countHash[i] += 1
      else countHash = countHash.merge(i => 1)
    end
   end

   return countHash

end

p count_words("A man, a plan, a canal -- Panama")
p count_words "Doo bee doo bee doo"
