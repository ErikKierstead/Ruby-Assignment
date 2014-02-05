def palindrome?(string)
 
    #Strips Special Characters and Digits:
    string.gsub!(/[\W\d]/, "")

    #Outputs True/False if Reversed:
    puts string.downcase + " == " + string.downcase.reverse + ": "
    return string.downcase == string.downcase.reverse

end

p palindrome?("A man, a plan, a canal -- Panama")
p palindrome?("Madam, I'm Adam!")
p palindrome?("Abracadabra")
