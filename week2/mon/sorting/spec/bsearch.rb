

def binary_search(array, target, start_index = 0, last_index = array.length )

   # where the last = the array.length
   # includes the start, does not include the last

	mid_index = (last_index + start_index)/2
	mid_ele = array[mid_index]

	if start_index >= last_index
	      return nil #standard in ruby to return bill
	elsif mid_ele == target
	      return mid_index
	elsif mid_ele > target 
	      return binary_search(array, target, start_index, mid_index)
	elsif mid_ele < target
	      return binary_search(array, target, mid_index + 1, last_index)
	end

end

def binary_search_loop(array, target, start = 0, last = array.length)

	mid_index = (last - start) /2
	mid_ele = array[mid_index]

	while start < last
		if mid_ele == target
	      mid_index

		elsif mid_ele > target 
		      binary_search(array, target, start_index, mid_index)

		elsif mid_ele < target
		      binary_search(array, target, mid_index + 1, last_index)
		end

	end
	return nil

end

