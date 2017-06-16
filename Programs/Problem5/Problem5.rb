puts "Enter the File name containing your wordlist"
file1 = gets.chomp
my_array = []
string1 = File.open(file1).read()
my_array = string1.split("\n")
puts "Reading 10 words from the file\n\n"
item = my_array[rand(my_array.length)] # To pick one of the random word from the file
item_length = item.length
print item
stringTemp = ""
word = ""
count = 0
guess_word=""
# This lines are for displaying ***** before guessing the word
while item_length != 0
  print "\nThe word to guess is:"
  item.each_char { |itemchar|
     if stringTemp.include? itemchar
      print itemchar
     else
       print "*"
     end
   }
   #These lines are for guessing the character in the word
  print "\nEnter the character to guess : "
  ch = gets.chomp
  stringTemp+=ch
  count = item.count(ch)
  print "The character #{ch} occurs in #{count} positions"
  print "\n\nThe word to guess is now:"
   item.each_char { |itemchar|
      if stringTemp.include? itemchar
       print itemchar
      else
        print "*"
      end
    }
    print "\nEnter your guess  : "
    guess_word = gets.chomp
    if guess_word == item
      print "Congratulation! #{item} is the correct word\n\n"
      print "You achieved the correct word in #{count} guesses!"
    else
      print "That is not the correct word."
      print "\nPlease guess another letter and try again"
    end
    item_length-=1
  end
