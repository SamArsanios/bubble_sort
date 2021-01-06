!/usr/bin/env ruby
# gem install bundler
def bubble_sort(arr)
  len = arr.length
  swap = true
  while swap
    swap = false
    (0...len - 1).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
  end
  arr
end
p bubble_sort([12, 56, 28, 5, 1100, 6])

def bubble_sort_by(array)
  unsorted = true
  while unsorted
    i = 0
    unsorted = false
    while i < (array.length - 1)
      if yield(array[i], array[i + 1]).to_i >= 0
        array[i], array[i + 1] = array[i + 1], array[i]
        unsorted = true
      end
      i += 1
    end
  end
  array
end

x = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

p x
