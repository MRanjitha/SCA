def binaryConversion(n)
  myarray = [],i = 0,internalGap = 0,finalGap = 0
  while  n > 0
    myarray[i] = n % 2
    n = n / 2
    i+=1
  end
  puts "The binary vale is :"
  myarray.reverse!
 myarray.each { |x| print "#{x} " }
 #Find the longest gap
 for i in 0..myarray.length-1
      internalGap = 0
   if myarray[i] == 1
     while myarray[i+1] == 0
       internalGap+=1
       i+=1
       if i == myarray.length-1
         if myarray[i] == 0
           internalGap = 0
         end
         break
       end
     end
     if internalGap > finalGap
       finalGap = internalGap
     end
   end
end
if finalGap > 0
  puts "\nLongest gap is #{finalGap}"
  else
   if finalGap == 0
    puts "\nNo binary gaps"
    end
  end
end
puts "Enter the Integer"
n = gets.chomp.to_i
binaryConversion(n)
