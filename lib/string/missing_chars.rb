# Ruby program to find characters
# that needs to be added to make Pangram
module String
    class Missing_Chars
        def run(frase)

            alfabeto = (a..z).to_a
            tamanho = alfabeto.length

            (0..tamanho-1).to_a.each do |i|
                if frase.include? alfabeto[i]
                    alfabeto[i] = 0
                end

                tamanho = alfabeto.length
                result = []
                (0..tamanho-1).to_a.each do |i|
                    result.append(alfabeto[i]) unless alfabeto[i] == 0
                end
            end
        end
        
    end
    
end