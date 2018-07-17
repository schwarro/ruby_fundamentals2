def min_eight(str)
  str = str.to_s
  if str.length > 8
    return true
  else
    return false
  end
end

puts min_eight("Hello")
puts min_eight("Hello, my name is Rob")
