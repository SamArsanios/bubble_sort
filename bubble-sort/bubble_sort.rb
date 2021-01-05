def bubble_sort(arr)
	len = arr.length
	swap = true
	  while swap
		swap = false
		(0...len-1).each do |i|
		  if arr[i] > arr[i+1]
			arr[i],arr[i+1] = arr[i+1], arr[i]
			swap = true
		  end
		end
	  end
	  return arr
end
	p bubble_sort([12,56,28,5,1100,6])
