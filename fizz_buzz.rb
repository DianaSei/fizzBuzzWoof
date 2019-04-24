require 'byebug'

fizz_buzz_woof = {3 => "Fizz ", 5 => "Buzz ", 7 => "Woof "}

for x in 1..100
    x_array = x.to_s.chars.map(&:to_i)
    
    fizz_buzz_woof.each do |key, value|
        if x % key == 0 
            print(value)
            if x_array[0] == key || x_array[1] == key
                print(value)
            end  
        elsif  x_array[0] == key || x_array[1] == key
            print(value)
        end
        
    end
    puts x 
end

  
