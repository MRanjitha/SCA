def phonetic(lastdig,count)
#Case statements for finding the particular alphabet or number for the key
case lastdig
when 1
   puts "1"
 when  2
    puts "a" if count % 4 == 1
    puts "b" if count % 4 == 2
    puts "c" if count % 4 == 3
    puts "2" if count % 4 == 4
  when 3
    puts "d" if count % 4 == 1
    puts "e" if count % 4 == 2
    puts "f" if count % 4 == 3
    puts "3" if count % 4 == 4
  when 4
    puts "g" if count % 4 == 1
    puts "h" if count % 4 == 2
    puts "i" if count % 4 == 3
    puts "4" if count % 4 == 4
  when 5
    puts "j" if count % 4 == 1
    puts "k" if count % 4 == 2
    puts "l" if count % 4 == 3
    puts "5" if count % 4 == 4
  when 6
    puts "m" if count % 4 == 1
    puts "n" if count % 4 == 2
    puts "o" if count % 4 == 3
    puts "6" if count % 4 == 4
  when 7
    puts "p" if count % 4 == 1
    puts "q" if count % 4 == 2
    puts "r" if count % 4 == 3
    puts "s" if count % 4 == 4
    puts "7" if count % 4 == 5
  when 8
    puts "t" if count % 4 == 1
    puts "u" if count % 4 == 2
    puts "v" if count % 4 == 3
    puts "2" if count % 4 == 4
  when 9
    puts "w" if count % 4 == 1
    puts "x" if count % 4 == 2
    puts "y" if count % 4 == 3
    puts "z" if count % 4 == 4
    puts "z" if count % 4 == 5
  when 0
    puts "0"
  end
end
print "Enter the number : "
key = gets.chomp.to_i
flag=true
i = 0,count =0
#For finding the lastdigit
lastdig = key % 10
#Loop for finding the same digits in the key
while key > 0
  if  lastdig!= key % 10
    flag=false
    break
  end
  key = key/10
  count+=1
end
if flag == true
 phonetic(lastdig,count)
else
  puts "Invalid Input"
end
