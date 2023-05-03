# Reversal algorithm for right rotation of an array

# Given an array, right rotate it by k elements.

# Input: arr[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# k = 3
# Output: [8, 9, 10, 1, 2, 3, 4, 5, 6, 7]

module Vetor
    class Reversal
        def run(arr, k)

            if k < 0
                return "Error: Input Invalid of k"
            end
            
            length = arr.length

            # Prepend that array to our list
            (0..k-1).each do
                arr = arr.prepend(0)
            end
            
            # iterate and swop adjacent elements
            (0..k-1).each do |i|
                arr[i], arr[length+i] = arr[length+i], arr[i]
            end
            
            # Removing zero's in the end of list
            arr.pop(k)
            
            # result is
            return arr
        end
        
    end
    
end

