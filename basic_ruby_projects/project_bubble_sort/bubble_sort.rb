def bubble_sort(array)

  for i in 0...array.length
    swapped = false
    for j in 0...(array.length-1)
      if array[j] > array[j+1]
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
        swapped = true
      end
    end
    break unless swapped
  end

  array
end
#main
sorted_array = bubble_sort([4,3,78,2,0,2])
p sorted_array