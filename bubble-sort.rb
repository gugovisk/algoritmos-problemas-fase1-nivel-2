def bubble_sort(array)
    return array if array.size <= 1
    swap = true
      while swap
        swap = false
        (array.length - 1).times do |x|
          if array[x] > array[x+1]
            array[x], array[x+1] = array[x+1], array[x]
            swap = true
          end
        end
      end
    array
  end

arr = [5, 12, 6, 10, 30, 20, 15, 2, 14]
arr_bubble = bubble_sort(arr).Array
puts arr_bubble