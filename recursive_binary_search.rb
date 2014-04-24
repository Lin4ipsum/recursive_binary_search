class Search

	def recursive_binary_search(array, value, from=0, to=nil)
		if array.include?(value)
			if to == nil
	    	to = array.length - 1
	    end
	 
	    mid = (from + to) / 2
	 
	    if value < array[mid]
	      return recursive_binary_search array, value, from, mid - 1
	    elsif value > array[mid]
	      return recursive_binary_search array, value, mid + 1, to
	    else
	      return mid
	    end
	  else
	  	nil
	  end
	end
end
