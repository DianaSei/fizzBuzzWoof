require 'byebug'

# ---------- Option 1 ----------------

fizzBuzzWoof = {3 => "Fizz ", 5 => "Buzz ", 7 => "Woof "}

for i in (1..100)
    y = i.to_s.chars.map(&:to_i)
    
    fizzBuzzWoof.each do |k, v|
        if i % k == 0 
            print(v)
            if y[0] == k || y[1] == k
                print(v)
            end  
        elsif  y[0] == k || y[1] == k
            print(v)
        end
        
    end
    puts i 
end

# ------------- Option 2 --------------

for i in 1..100
    
    temp = i
    fizz = ""
    buzz = ""
    woof = ""

    while temp > 0 
      fizz += (temp%10 == 3) ? "Fizz " : ""
      buzz += (temp%10 == 5) ? "Buzz " : ""
      woof += (temp%10 == 7) ? "Woof " : ""

      temp = temp/10
    end

    result =  (i%3 > 0) ? ((i%5 > 0) ? ((i%7 > 0) ? ((fizz == "" && buzz == "" && woof == "") ? "#{i} " : "#{fizz+buzz+woof}") : "#{fizz+buzz+woof+"Woof"} (#{i}) ") : ((i%7 > 0) ? "#{fizz+buzz+"Buzz "+woof}(#{i}) " : "#{fizz+buzz+"Buzz "+woof+"Woof "} ")) : ((i%5 > 0) ? (i%7 > 0) ? "#{fizz+"Fizz "+buzz+woof} (#{i}) " : "#{fizz+"Fizz "+buzz+woof+"Woof"} " : ((i%7 > 0) ? "#{fizz+"Fizz "+buzz+"Buzz "+woof} " : "#{fizz+"Fizz "+buzz+"Buzz "+woof+"Woof"} "))

     puts "#{result}"
  end

  
