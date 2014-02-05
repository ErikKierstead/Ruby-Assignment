def combined_anagrams(wordList)

   groupHash = {}
   
   #Uses Sorted Words as Keys in Hash while Unsorted Value Attached to Key:

   wordList.each do |i|
      if(groupHash.has_key?(i.downcase.chars.sort.join)) 
         groupHash[i.downcase.chars.sort.join].push(i)
      else groupHash = groupHash.merge(i.downcase.chars.sort.join => [i])
    end
   end

   return groupHash.values

end

wordList = ["We", "we", "rats", "star", "blue", "lube", "meow"]

p combined_anagrams(wordList)
