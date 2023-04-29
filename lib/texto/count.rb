# Ruby program to count the uppercase,
# lowercase, special characters
# and numeric values
 
# Function to count uppercase, lowercase,
# special characters and numbers

module Texto
    class CountTypeChars
        def run(str)

            uper, lower, number, special = 0, 0, 0, 0
            res = []
            
            if str.scan(/[A-Z]/).length > 0
                uper = str.scan(/[A-Z]/).length
            else
                uper = 0
            end
            
            if str.scan(/[a-z]/).length > 0
                lower = str.scan(/[a-z]/).length
            else
                lower = 0
            end
            
            if str.scan(/[0-9]/).length > 0
                number = str.scan(/[0-9]/).length
            else
                number = 0
            end

            if str.scan(/[^a-zA-Z0-9]/).length > 0
                special = str.scan(/[^a-zA-Z0-9]/).length
            else
                special = 0
            end

            res.append(uper)
            res.append(lower)
            res.append(number)
            res.append(special)
            
            return res.join

        end
        
    end
    
end

