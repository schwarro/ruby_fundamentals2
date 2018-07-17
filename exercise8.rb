def min_to_sec (min)
  return min * 60
end

def calc_speed (dist, sec)
  return dist / sec
end

def person (dist, mins)
  secs = min_to_sec (mins)
  speed = calc_speed(dist, secs)
  return secs, speed
end

def print_states(p1, p2, p3)
  if p3[1] > p2[1] && p3[1] > p1[1]
    puts "Person 3 was the fastest at #{p3[1]} m/s"
  elsif p2[1] > p3[1] && p2[1] > p1[1]
    puts "Person 2 was the fastest at #{p2[1]} m/s"
  elsif p1[1] > p3[1] && p1[1] > p2[1]
    puts "Person 1 was the fastest at #{p1[1]} m/s"
  elsif p1[1] == p2[1] && p2[1] == p3[1]
    puts "Everyone tied at #{p1[1]} m/s"
  else
    puts "Well done everyone!"
  end
end

def init
  puts "How far did person 1 run (in metres)?"
  distance1 = gets.to_f
  puts "How long (in minutes) did person 1 run take to run #{distance1} metres?"
  mins1 = gets.to_f


  puts "How far did person 2 run (in metres)?"
  distance2 = gets.to_f
  puts "How long (in minutes) did person 2 take to run #{distance2} metres?"
  mins2 = gets.to_f


  puts "How far did person 3 run (in metres)?"
  distance3 = gets.to_f
  puts "How long (in minutes) did person 3 take to run #{distance3} metres?"
  mins3 = gets.to_f

  p1 = person(distance1, mins1)
  p2 = person(distance2, mins2)
  p3 = person(distance3, mins3)

  print_states(p1, p2, p3)
end

init
