guess="mono"
guessarr=guess.split('')
try=[]
cont=0
atmp=0
for i in 1..guess.length do
    try.push("_ ")
end
while cont!=guessarr.length && atmp<5
print try.join()
puts "\n"
  letter=gets.chomp
#   matches = guessarr.each_index.select{|i| guessarr[i] == letter}
#   matches.each do |idx|
#       try[idx] = letter
#   end
  if guessarr.include?(letter)
    matches = guessarr.each_index.select{|i| 
    guessarr[i] == letter}
    matches.each do |idx|
       cont+=1    
       try[idx] = letter
    end
    # cont+=1
  else
    atmp+=1  
    puts "Try Again!"
  end
  
end
puts try.join()

if(cont==guessarr.length)
   puts "You win"
else
    puts "Game Over"
end    


