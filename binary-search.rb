class Array
    def binary_search(valores_desej, inicio = 0, fim = nil)
      fim ||= size - 1
      meio = (inicio + fim) / 2
  
      return "None" if inicio > fim
  
      if valores_desej == self[meio]
        return meio
      elsif valores_desej > self[meio]
        binary_search(valores_desej, meio + 1, fim)
      else
        binary_search(valores_desej, inicio, meio - 1)
      end
    end
  end

arr = [5, 12, 6, 10, 30, 20, 15, 2, 14].sort
vals_desej = [5, 2, 50]
pos_retornadas = vals_desej.map { |i| arr.binary_search(i)}.join(', ')
  
puts "#{arr}.\n Os valores encontrados são #{vals_desej} nas seguintes posições: #{pos_retornadas}, respectivamente."
  