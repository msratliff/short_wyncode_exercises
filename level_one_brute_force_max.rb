def max(items)
  # your code here
  answer = items[0]
  
  items.each do |check|
  	if check > answer
  		answer = check
  	end  
  end
  answer
end

puts max([1,2,3,4,5,6]) == 6
puts max([4,5,6,1,2,3]) == 6
puts max([9,8,7,6,5,3,1]) == 9