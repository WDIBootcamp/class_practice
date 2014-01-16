# good sudo code: what guarantee's what you want to happen

def find_max(list)
	max = list[0] #
	for i in 1... list.length
		max = list[i] if list[i] > max
	end
	return max
end