# Ruby code to find largest three
# elements in an array 
# Function to print three largest
# elements
module Vetor
    class Largest_Tree
        def run(arr)
    
            if arr.length < 3 
                return "Error: Invalid Input"
            end
        
            return arr.max(3)
        
        end
    end
end
