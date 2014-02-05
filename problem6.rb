def glob_match(filenames, pattern)
   return filenames.select{|i| i.match(/#{pattern}/)}
end

testList = ['poooooooooop.rb', 'part5.rb.lol', 'part5.b.hey', 'parrrrrrrrrt5.r','part1.rb', 'part2.rb', 'part2.rb~', '.part3.rb.un~', 'part4.py', 'black']

#Convert Glob Rules to Regex:
pattern = '*part*rb?*'.gsub!("*", ".*")

p glob_match(testList, pattern)
