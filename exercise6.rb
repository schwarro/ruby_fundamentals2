def conversion(temp)
  celsius = (temp - 32) * (5.0 / 9.0)
  return celsius
end

puts "Please enter the current temperature in Fahrenheit: "
fahr = gets.chomp.to_i
converted = conversion(fahr).round(1)
puts "The current temperature in celsius is #{converted}"
