# cd("C:\\Users\\jdorr\\Desktop\\Dev\\ElixirDump\\src")
# c("anonymousfunctions.ex")
# M.main

defmodule M do
  def main do
    anonymousfunctions_stuff()
  end
  
  def anonymousfunctions_stuff do  
    get_sum = fn (x, y) -> x + y end
    
    IO.puts "3 + 4 = #{get_sum.(3, 4)}"
    
    IO.puts "-------------------------------------------------------" 
    
    z = get_sum.(10, 20)
    IO.puts("z = #{z}")
    
    IO.puts "-------------------------------------------------------" 
    
    get_sum_again = &(&1 + &2 + &3)
    IO.puts "3 + 4 + 5 = #{get_sum_again.(3, 4, 5)}"
    
    IO.puts "-------------------------------------------------------" 
    
    z2 = get_sum_again.(10, 20, 30)
    IO.puts("z2 = #{z2}")

    IO.puts "-------------------------------------------------------" 

    get_sum_any_ints = fn
      {x, y} -> IO.puts "#{x} + #{y} = #{x+y}"
      {x, y, z} -> IO.puts "#{x} + #{y} + #{z} = #{x+y+z}"
    end      
    get_sum_any_ints.({5,4,3})
    
    IO.puts "-------------------------------------------------------" 
    
    # Increment 5 by 1 (default)
    IO.puts increment(5)
    # Increment 5 by 10
    IO.puts increment(5, 10)    
  end
  
  def increment(x, y \\ 1) do
    x + y
  end
end