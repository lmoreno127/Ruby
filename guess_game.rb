guess=rand(1..20)
number=gets.chomp.to_i
cont=2
while cont>0 do 
  if number == guess
    puts "You have guessed the number"
    break
  else
    cont-=1
    puts "Try Again"
  end
number=gets.chomp.to_i
end
puts "You lose the game"
