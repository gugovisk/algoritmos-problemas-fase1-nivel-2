module Sort
  class Counting
    def run(array)
      max_valor = array.max

      index_array = Array.new(max_valor + 1, 0) #Array.new = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  
      array.each do |element|                   #Contando quantas vezes cada elemento aparece no array inicial 
          index_array[element] += 1
      end
  
      (1..max_valor).each do |i|                
          index_array[i] += index_array[i-1] 
      end
  
      sorted_array = Array.new(array.size)
  
      array.each do |element|
          sorted_array[index_array[element]-1] = element 
          index_array[element] -= 1
      end
  
      sorted_array

    end
  end
end

