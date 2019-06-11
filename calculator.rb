def sum(a,b)
 
 return "Sum is: #{a+b}"
  
end
def sub(a,b)
 
 return "Substraction is: #{a-b}"
  
end 
def mul(a,b)
 
 return "Multiplication is: #{a*b}"
  
end 
def div(a,b)
 if b!=0
    return "division is: #{a/b}"
 else
     return "Division by 0 is not defined"
 end     
end
def exp(b,e)
   return "#{b} ^ #{e} is: #{b**e}" 
end
def sqrt(n)
    return "The square root of #{n} is: #{n**(0.5)}"
end
def factorial(n)
  if n==0  
      return 1
  end      
  return n*factorial(n-1)
end    
op=0
while op!=11 
 puts "Luis Calculator"
 puts "1.Sum"
 puts "2.Substraction"
 puts "3.Multiplication"
 puts "4.Division"
 puts "5.Exponential"
 puts "6.Square Root"
 puts "7.Sine"
 puts "8.Cosine"
 puts "9.Tangent"
 puts "10.Factorial"
 puts "11.Exit"
 puts "Choose an option: "
 op=gets.chomp.to_i
 if op<6
   puts "Write your first number:"
   n1=gets.chomp.to_i
   puts "Write your second number:"
   n2=gets.chomp.to_i
 elsif op<11
  puts "Write your number:"
  n=gets.chomp.to_f
 end  
 case op
  when 1
      puts sum(n1,n2)
  when 2
      puts sub(n1,n2)
  when 3
      puts mul(n1,n2)
  when 4
      puts div(n1,n2)
  when 5
      puts exp(n1,n2)
  when 6
      puts sqrt(n)
  when 7
      puts "Sine of #{n} is: #{Math.sin(n)}"
  when 8
      puts "Cosine of #{n} is: #{Math.cos(n)}" 
  when 9
      puts "Tangent of #{n} is: #{Math.tan(n)}"
  when 10
      n=n.to_i
      puts "#{n}! is: #{factorial(n)}"
 else 
     break      
 end
 puts "------------------"
end
