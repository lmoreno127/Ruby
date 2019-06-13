def randonName(arr1,arr2)
   return arr1.sample+" "+arr2.sample 
end 
firstnamelist = ["Jose", "Andres", "Andrew", "Ted", "Angel", "Matthew", "Florette", "Nicolle", "Ivan", "Brady", "Granger", "Zeke", "David", "Javier", "Esteban", "Myriam", "Laura", "Rafael", "Julio", "Jake", "Tom", "Doug", "Mitch", "Eileen", "Jose", "Shannon", "Luke", "Ryan", "Allyssa", "Muffin", "Simone", "Luka", "Evan", "Reggie", "Noel", "Dan", "Tamsen", "Julieta", "George", "Alfred", "Devin", "Dylan", "Edgar", "Andrea", "Carolina", "Billy"];

lastnamelist = ["Martinez", "Jasbon", "Abuhoff", "Johnson", "Parker", "Banner", "Odinson", "Hallum", "Ng", "Wallace", "Silver", "daVinci", "Potter", "Li", "Davis", "Bjornsdottir","diSilvio", "Benson", "Bryant", "Henson"]
puts "Would you like to generate a randon Name(Y/N):"
op=gets.chomp.upcase
while op!="N"
  puts randonName(firstnamelist,lastnamelist)
  puts "Would you like to generate a randon Name(Y/N):"
  op=gets.chomp.upcase
end
