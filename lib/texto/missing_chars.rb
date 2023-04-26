# Ruby program to find characters
# that needs to be added to make Pangram
module Texto
    class Missing_Chars
        def run(str)

            str = str.downcase
            char = 'abcdefghijklmnopqrstuvwxyz'
            missingChar = []

            (0..char.length-1).to_a.each do |i|
                if str.index(char[i]) == nil
                    missingChar.append(char[i])
                end
            
            end

            return missingChar.join

            
        end
        
    end
    
end

