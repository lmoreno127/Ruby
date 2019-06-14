def print_stops(lines)
  lines.each do |line,stops|
      puts "#{line} Line"
     stops.each do |stop|
      puts "-#{stop}" 
     end
     puts "\n"
  end      
  puts "Enter Starting Station:"
  ori=gets.chomp
  puts "Enter Destination Station:"
  dest=gets.chomp
  return ori,dest
end
def amount_stops(ori,dest,line)
    if line.include?(ori)
        if line.include?(dest)
            ior=line.index(ori)
            idest=line.index(dest)
            return (ior-idest).abs
        else
          return 0
        end    
    else
       return 0
    end    
end
lines={}
lines["Rojo"]=["Calle 62","Calle 42","Carrera 19b","Calle 18","Calle 17","Calle 16","Calle 15","Avenida Boyaca","Calle 10","Calle 7"]
lines["Azul"]=["Calle 63","Calle 45","Calle 26","Centro Historico","Hospitales","Santander","Estacion NQS","Rosario","Avenida 68","Avenida Boyaca","Kennedy","Palenque","Villablanca"]
lines["Amarillo"]=["Centro Historico","Calle 26","Avenida NQS","Carrera 14","Carrera 15","Carrera 19b","Carrera 21","Carrera 24","Carrera 26","Portal el Dorado"]
lines["Verde"]=["Centro Historico","Calle 17","Calle 26","Carrera 34","Aeropuerto"]
op="n"
while op=="n"
  or_des=print_stops(lines)
  if amount_stops(or_des[0],or_des[1],lines["Rojo"])>0
      puts "There are #{amount_stops(or_des[0],or_des[1],lines["Rojo"])} stops in Rojo Line"
  elsif amount_stops(or_des[0],or_des[1],lines["Azul"])>0
       puts "There are #{amount_stops(or_des[0],or_des[1],lines["Azul"])} stops in Azul Line"
  elsif amount_stops(or_des[0],or_des[1],lines["Amarillo"])>0
      puts "There are #{amount_stops(or_des[0],or_des[1],lines["Amarillo"])} stops in Amarillo Line"
  elsif  amount_stops(or_des[0],or_des[1],lines["Verde"])>0
     puts "There are #{amount_stops(or_des[0],or_des[1],lines["Verde"])} stops in Verde Line"
  else
      puts "Stations not found in the metro lines"
  end
  puts "Do you want to quit the program (y/n)"
  op=gets.chomp.downcase
end
