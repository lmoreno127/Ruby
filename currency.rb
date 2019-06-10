puts "What is the origin money:"
currencyo=gets.chomp
puts "What is the money to convert:"
currencto=gets.chomp
puts "Enter the quantify to convert:"
amount=gets.chomp.to_i
convertamount=1
while convertamount!=0 do 
    if currencyo=="COP" && currencto=="USD"
       convertamount=amount/3252.0
       puts "Your amount in #{currencto} is: USD$#{convertamount}"
    elsif currencyo=="USD" && currencto=="COP"
       convertamount=amount*3252.0
        puts "Your amount in #{currencto} is:COP$#{convertamount}"
    elsif currencyo=="COP" && currencto=="MEX"
       convertamount=amount/170.0
       puts "Your amount in #{currencto} is:MEX$#{convertamount}"
   else
      convertamount=amount*170.0
      puts "Your amount in #{currencto} is:COP$#{convertamount}"
    end
    puts "Do you want to finish the program?"
    ans=gets.chomp
    if(ans=="yes")
       convertamount=0
    else
      puts "What is the origin money:"
      currencyo=gets.chomp
      puts "What is the money to convert:"
      currencto=gets.chomp
      puts "Enter the quantify to convert:"
      amount=gets.chomp.to_i  
    end    
    
