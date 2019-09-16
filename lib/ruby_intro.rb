# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sum = 0
	arr.each do |i|
		sum+=i
	end
	return sum

end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n
	i=0
	while i < arr.length
		j = i+1
		while j < arr.length
			if(arr[i]+arr[j] == n)
				return true
			end
		j+=1
		end
	i+=1
	end 
	return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
	if (s =~ /\A(?=[^aeiou])(?=[a-z])/i) == nil
		return false
	end
	return true
end

def binary_multiple_of_4? s
  if ((s.to_i(2) % 4) == 0) && (s =~ /\b[01]+\b/)
	return true
  end
  return false
end

# Part 3

class BookInStock
	attr_accessor :isbn, :price
	
	def initialize(_isbn,_price)
	raise ArgumentError if (_isbn.empty? || _price <=0)
	@isbn = _isbn
	@price = Float(_price)
	end
	
	def price_as_string
	"$" + sprintf('%.2f',price)
	end
end
